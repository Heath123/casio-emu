interface Variable {
  isConstant: false
  name: string
}

interface Constant {
  isConstant: true
  constantValue: number
}

type VariableOrConstant = Variable | Constant

function isVariable(variableOrConstant: VariableOrConstant): variableOrConstant is Variable {
  return variableOrConstant.isConstant === false;
}

function thing(a: VariableOrConstant) {
  if (isVariable(a)) {
    // Path 2
    console.log(a.name)
  } else {
    // Path 1
    console.log(a.constantValue)
  }
}
