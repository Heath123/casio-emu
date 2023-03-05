import * as fs from 'fs'

// This script generates C helper code that does as much of the interpreter process as possible
// The idea is to abstract away things like addressing modes, and generalise it down to what I'm
// calling a "family", which is generally the name of the instruction, like mov. Any different
// addressing modes that the instruction supports are decoded before and then only a single
// handler needs to be written manually.

// Ideally, the instruction implementation could be simplified to something like:

// void mov(u32 src, u32* dest) {
//   *dest = src;
// }

// Define the instruction type
// Define the instruction type
interface Instruction {
  id: number
  name: string
  family: string
  formatString: string
  opcode: (string | null)[]
  operands: { [key: string]: Operand }
  delaySlotVariant?: boolean
  instructionSize?: number
}

interface BaseOperand {
  type: string
  isConstant: boolean
  preDecrement?: boolean
  postIncrement?: boolean
  indirect?: boolean
  indirectSize?: number
  // Offset by another argument or a constant
  offsetBy?: string
  signed?: boolean
}

interface ConstantOperand extends BaseOperand {
  isConstant: true
  constantValue: number
}

interface VariableOperand extends BaseOperand {
  isConstant: false
  mask: string[]
  shift: number
}

type Operand = ConstantOperand | VariableOperand

function isConstant(operand: Operand): operand is ConstantOperand {
  return operand.isConstant === true
}

let instructions: Instruction[] = JSON.parse(fs.readFileSync('instructions.json', 'utf8'))

// instructions = instructions.filter((instruction) => instruction.id === 167)

function sanitizeName(name: string): string {
  return name
    .replaceAll(' ', '_')
    .replaceAll('.', '_')
    .replaceAll('@', '_at_')
    .replaceAll('+', '_plus_')
    .replaceAll('-', '_minus_')
    .replaceAll(',', '_')
    .replaceAll('/', '_')
    .replaceAll('#', '_')
    .replaceAll('(', '')
    .replaceAll(')', '')
    .replaceAll('__', '_')
    .replaceAll('__', '_')
    .replaceAll('__', '_')
}

// Since there are only 65536 possible instructions, we can create an array of function pointers
// This is a dictionary of instruction IDs to names of handlers
let instructionHandlers: { [key: number]: string } = {}

let finalCode = ``
for (const instruction of instructions) {
  let funcName = `autogen_${sanitizeName(instruction.name)}`
  let code = `
  void ${funcName}(u16 instr) {
    u32* dest;
    #ifdef PRINT_INSTRUCTIONS
    printf(${JSON.stringify(instruction.name + '\n')});
    #endif\n`

  // Decode the operands
  for (const [name, operand] of Object.entries(instruction.operands)) {
    if (isConstant(operand)) {
      code += `u32 ${name} = ${operand.constantValue};\n`
    } else if (!operand.isConstant) {
      code += `u32 ${name} = (instr & 0b${operand.mask.join('')}) >> ${operand.shift};\n`
    }
  }

  let usedTemp: boolean = false
  let destinationOperandName: string
  let destinationOperand: Operand | ConstantOperand
  if (Object.keys(instruction.operands).length === 0) {
    code += `u32 src = 0;\n`
    code += `dest = (void*) 0;\n`
  } else {
    // Read the source operand
    // Assume that the first operand is the source for now
    const sourceOperandName = Object.keys(instruction.operands)[0]
    const sourceOperand = Object.values(instruction.operands)[0]
    if (sourceOperand.type === 'register') {
      if (sourceOperand.preDecrement) {
        code += `cpu.reg.regArray[${sourceOperandName}] -= ${sourceOperand.indirectSize};\n`
      }
      if (sourceOperand.indirect) {
        code += `u32 src = readMemory(cpu.reg.regArray[${sourceOperandName}]`
        if (sourceOperand.offsetBy) {
          let offsetBy = sourceOperand.offsetBy === 'r0' ? 'cpu.reg.regArray[0]' : sourceOperand.offsetBy
          code += ` + (${offsetBy} * ${sourceOperand.indirectSize})`
        }
        code += `, ${sourceOperand.indirectSize});\n`
      } else {
        code += `u32 src = cpu.reg.regArray[${sourceOperandName}];\n`
      }
      if (sourceOperand.postIncrement) {
        code += `cpu.reg.regArray[${sourceOperandName}] += ${sourceOperand.indirectSize};\n`
      }
    } else if (sourceOperand.type === 'immediate') {
      if (isConstant(sourceOperand)) {
        // This doesn't seem to be used so there's no need to implement it
        throw new Error('Constant immediate operand not supported')
      }
      if (sourceOperand.signed) {
        // Count the bits in mask
        // e.g. ["0000", "0000", "1111", "1111"]

        let bitCount = 0
        for (const mask of sourceOperand.mask) {
          for (const bit of mask) {
            if (bit === '1') {
              bitCount++
            }
          }
        }

        code += `u32 src = s_ext(${sourceOperandName}, ${bitCount});\n`
      } else {
        code += `u32 src = ${sourceOperandName};\n`
      }
    }

    // Read the destination operand into a pointer
    // Assume that the second operand is the destination for now

    // If there are at least two operands, the second one is the destination
    // Otherwise the first one is both the source and the destination
    if (Object.keys(instruction.operands).length >= 2) {
      destinationOperandName = Object.keys(instruction.operands)[1]
      destinationOperand = Object.values(instruction.operands)[1]
    } else {
      destinationOperandName = Object.keys(instruction.operands)[0]
      destinationOperand = Object.values(instruction.operands)[0]
    }
    if (destinationOperand.type === 'register') {
      if (destinationOperand.preDecrement) {
        code += `cpu.reg.regArray[${destinationOperandName}] -= ${destinationOperand.indirectSize};\n`
      }
      if (destinationOperand.indirect) {
        if (destinationOperand.indirectSize === 4) {
          code += `dest = getMemoryPtr(cpu.reg.regArray[${destinationOperandName}]);\n`
        } else {
          // Use a temporary variable as the write target
          code += `u32 tmp = 0;\n`
          code += `dest = &tmp;\n`
          usedTemp = true
        }
      } else {
        code += `dest = &cpu.reg.regArray[${destinationOperandName}];\n`
      }
      if (destinationOperand.postIncrement) {
        code += `cpu.reg.regArray[${destinationOperandName}] += ${destinationOperand.indirectSize};\n`
      }
    } else if (destinationOperand.type === 'immediate') {
      // This can happen if the instruction has one operand and it's treated as both the source and the destination
      // In reality it's not used as a destination, so just set the destination to a null pointer
      if (Object.keys(instruction.operands).length === 1) {
        code += `dest = (void*) 0;\n`
      } else {
        throw new Error('Immediate destination operand? That doesn\'t make sense')
      }
    }
  }

  // Call the instruction function
  code += `${sanitizeName(instruction.family)}(src, dest);\n`

  // If we used a temporary variable, write it back to memory
  if (usedTemp) {
    code += `writeMemory(cpu.reg.regArray[${destinationOperandName}], tmp, ${(destinationOperand as Operand).indirectSize});\n`
  }

  code += '}'

  // Clean up the indentation
  code = code.trim()
  // Indent everything by 2 spaces except the first and last lines
  code = code
    .split('\n')
    .map((line, index) => {
      if (index === 0 || index === code.split('\n').length - 1) {
        return line.trim()
      } else {
        return '  ' + line.trim()
      }
    })
    .join('\n')
  finalCode += '// ' + instruction.name + '\n' +  code + '\n\n'

  // Find all possible instruction IDs for this instruction and add them to the dictionary
  // The opcode field looks like: ["1100", "0011", null, null]
  // For all null vaues we want all 16 possible values

  function possibleValues(part: string | null): number[] {
    if (part === null) {
      return [...Array(16).keys()]
    } else {
      return [parseInt(part, 2)]
    }
  }

  for (const part1 of possibleValues(instruction.opcode[0])) {
    for (const part2 of possibleValues(instruction.opcode[1])) {
      for (const part3 of possibleValues(instruction.opcode[2])) {
        for (const part4 of possibleValues(instruction.opcode[3])) {
          const id = (part1 << 12) | (part2 << 8) | (part3 << 4) | part4
          if (id in instructionHandlers) {
            throw new Error(`Duplicate instruction ID: ${id}`)
          }
          instructionHandlers[id] = funcName
        }
      }
    }
  }
}

// Generate the array of instruction handlers
let instructionHandlersCode = 'void (*instructionHandlers[65536])(u16) = {\n'
for (let i = 0; i < 65536; i++) {
  if (i in instructionHandlers) {
    instructionHandlersCode += `  ${instructionHandlers[i]},\n`
  } else {
    instructionHandlersCode += '  invalid,\n'
  }
}
instructionHandlersCode += '};\n'

finalCode += instructionHandlersCode

console.log(finalCode)
// console.log(instructionHandlers)
// console.log(instructionHandlers[0b0110000100000011])
