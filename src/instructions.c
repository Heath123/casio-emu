#include <stdio.h>
#include <stdlib.h>

#include "cpu.h"
#include "memory.h"
#include "config.h"

extern CpuState cpu;

// https://stackoverflow.com/a/17719010/4012708
u32 s_ext(u32 arg, u32 n) {
    int mask = 1U << (n - 1);
    return (arg ^ mask) - mask;
}

void delayedBranch(u32 target) {
  cpu.isBranchDelaySlot = true;
  cpu.branchTarget = target;
}

void invalid(u16 instr) {
  printf("Invalid instruction: %04x\n", instr);
  exit(1);
}

void clrs(u32 src, u32* dest) {
  printf("clrs: not implemented\n");
  exit(1);
}

void clrt(u32 src, u32* dest) {
  printf("clrt: not implemented\n");
  exit(1);
}

void clrmac(u32 src, u32* dest) {
  printf("clrmac: not implemented\n");
  exit(1);
}

void div0u(u32 src, u32* dest) {
  printf("div0u: not implemented\n");
  exit(1);
}

void ldtlb(u32 src, u32* dest) {
  printf("ldtlb: not implemented\n");
  exit(1);
}

void nop(u32 src, u32* dest) {
  // Do nothing
}

void rte(u32 src, u32* dest) {
  printf("rte: not implemented\n");
  exit(1);
}

void rts(u32 src, u32* dest) {
  delayedBranch(cpu.reg.PR);
}

void sets(u32 src, u32* dest) {
  printf("sets: not implemented\n");
  exit(1);
}

void sett(u32 src, u32* dest) {
  printf("sett: not implemented\n");
  exit(1);
}

void sleep(u32 src, u32* dest) {
  printf("sleep: not implemented\n");
  exit(1);
}

void cmp_pl(u32 src, u32* dest) {
  printf("cmp_pl: not implemented\n");
  exit(1);
}

void cmp_pz(u32 src, u32* dest) {
  printf("cmp_pz: not implemented\n");
  exit(1);
}

void dt(u32 src, u32* dest) {
  printf("dt: not implemented\n");
  exit(1);
}

void movt(u32 src, u32* dest) {
  printf("movt: not implemented\n");
  exit(1);
}

void rotl(u32 src, u32* dest) {
  printf("rotl: not implemented\n");
  exit(1);
}

void rotr(u32 src, u32* dest) {
  printf("rotr: not implemented\n");
  exit(1);
}

void rotcl(u32 src, u32* dest) {
  printf("rotcl: not implemented\n");
  exit(1);
}

void rotcr(u32 src, u32* dest) {
  printf("rotcr: not implemented\n");
  exit(1);
}

void shal(u32 src, u32* dest) {
  printf("shal: not implemented\n");
  exit(1);
}

void shar(u32 src, u32* dest) {
  printf("shar: not implemented\n");
  exit(1);
}

void shll(u32 src, u32* dest) {
  printf("shll: not implemented\n");
  exit(1);
}

void shlr(u32 src, u32* dest) {
  printf("shlr: not implemented\n");
  exit(1);
}

void shll2(u32 src, u32* dest) {
  printf("shll2: not implemented\n");
  exit(1);
}

void shlr2(u32 src, u32* dest) {
  printf("shlr2: not implemented\n");
  exit(1);
}

void shll8(u32 src, u32* dest) {
  printf("shll8: not implemented\n");
  exit(1);
}

void shlr8(u32 src, u32* dest) {
  printf("shlr8: not implemented\n");
  exit(1);
}

void shll16(u32 src, u32* dest) {
  printf("shll16: not implemented\n");
  exit(1);
}

void shlr16(u32 src, u32* dest) {
  printf("shlr16: not implemented\n");
  exit(1);
}

void add(u32 src, u32* dest) {
  printf("add: not implemented\n");
  exit(1);
}

void addc(u32 src, u32* dest) {
  printf("addc: not implemented\n");
  exit(1);
}

void addv(u32 src, u32* dest) {
  printf("addv: not implemented\n");
  exit(1);
}

void and(u32 src, u32* dest) {
  printf("and: not implemented\n");
  exit(1);
}

void cmp_eq(u32 src, u32* dest) {
  printf("cmp_eq: not implemented\n");
  exit(1);
}

void cmp_hs(u32 src, u32* dest) {
  printf("cmp_hs: not implemented\n");
  exit(1);
}

void cmp_ge(u32 src, u32* dest) {
  printf("cmp_ge: not implemented\n");
  exit(1);
}

void cmp_hi(u32 src, u32* dest) {
  printf("cmp_hi: not implemented\n");
  exit(1);
}

void cmp_gt(u32 src, u32* dest) {
  printf("cmp_gt: not implemented\n");
  exit(1);
}

void cmp_str(u32 src, u32* dest) {
  printf("cmp_str: not implemented\n");
  exit(1);
}

void div1(u32 src, u32* dest) {
  printf("div1: not implemented\n");
  exit(1);
}

void div0s(u32 src, u32* dest) {
  printf("div0s: not implemented\n");
  exit(1);
}

void dmuls(u32 src, u32* dest) {
  printf("dmuls: not implemented\n");
  exit(1);
}

void dmulu(u32 src, u32* dest) {
  printf("dmulu: not implemented\n");
  exit(1);
}

void exts(u32 src, u32* dest) {
  printf("exts: not implemented\n");
  exit(1);
}

void extu(u32 src, u32* dest) {
  printf("extu: not implemented\n");
  exit(1);
}

void mov(u32 src, u32* dest) {
  *dest = src;
}

void mul(u32 src, u32* dest) {
  printf("mul: not implemented\n");
  exit(1);
}

void muls(u32 src, u32* dest) {
  printf("muls: not implemented\n");
  exit(1);
}

void mulu(u32 src, u32* dest) {
  printf("mulu: not implemented\n");
  exit(1);
}

void neg(u32 src, u32* dest) {
  printf("neg: not implemented\n");
  exit(1);
}

void negc(u32 src, u32* dest) {
  printf("negc: not implemented\n");
  exit(1);
}

void not(u32 src, u32* dest) {
  printf("not: not implemented\n");
  exit(1);
}

void or(u32 src, u32* dest) {
  printf("or: not implemented\n");
  exit(1);
}

void shad(u32 src, u32* dest) {
  printf("shad: not implemented\n");
  exit(1);
}

void shld(u32 src, u32* dest) {
  printf("shld: not implemented\n");
  exit(1);
}

void sub(u32 src, u32* dest) {
  printf("sub: not implemented\n");
  exit(1);
}

void subc(u32 src, u32* dest) {
  printf("subc: not implemented\n");
  exit(1);
}

void subv(u32 src, u32* dest) {
  printf("subv: not implemented\n");
  exit(1);
}

void swap(u32 src, u32* dest) {
  printf("swap: not implemented\n");
  exit(1);
}

void tst(u32 src, u32* dest) {
  printf("tst: not implemented\n");
  exit(1);
}

void xor(u32 src, u32* dest) {
  printf("xor: not implemented\n");
  exit(1);
}

void xtrct(u32 src, u32* dest) {
  printf("xtrct: not implemented\n");
  exit(1);
}

void ldc(u32 src, u32* dest) {
  printf("ldc: not implemented\n");
  exit(1);
}

void lds(u32 src, u32* dest) {
  printf("lds: not implemented\n");
  exit(1);
}

void stc(u32 src, u32* dest) {
  printf("stc: not implemented\n");
  exit(1);
}

void sts(u32 src, u32* dest) {
  printf("sts: not implemented\n");
  exit(1);
}

void jmp(u32 src, u32* dest) {
  printf("jmp: not implemented\n");
  exit(1);
}

void jsr(u32 src, u32* dest) {
  printf("jsr: not implemented\n");
  exit(1);
}

void pref(u32 src, u32* dest) {
  printf("pref: not implemented\n");
  exit(1);
}

void tas(u32 src, u32* dest) {
  printf("tas: not implemented\n");
  exit(1);
}

void mac(u32 src, u32* dest) {
  printf("mac: not implemented\n");
  exit(1);
}

void mova(u32 src, u32* dest) {
  printf("mova: not implemented\n");
  exit(1);
}

void braf(u32 src, u32* dest) {
  printf("braf: not implemented\n");
  exit(1);
}

void bsrf(u32 src, u32* dest) {
  printf("bsrf: not implemented\n");
  exit(1);
}

void bf(u32 src, u32* dest) {
  printf("bf: not implemented\n");
  exit(1);
}

void bt(u32 src, u32* dest) {
  printf("bt: not implemented\n");
  exit(1);
}

void bra(u32 src, u32* dest) {
  printf("bra: not implemented\n");
  exit(1);
}

void bsr(u32 src, u32* dest) {
  printf("bsr: not implemented\n");
  exit(1);
}

void trapa(u32 src, u32* dest) {
  printf("trapa: not implemented\n");
  exit(1);
}

void movco(u32 src, u32* dest) {
  printf("movco: not implemented\n");
  exit(1);
}

void movli(u32 src, u32* dest) {
  printf("movli: not implemented\n");
  exit(1);
}

void movua(u32 src, u32* dest) {
  printf("movua: not implemented\n");
  exit(1);
}

void movca(u32 src, u32* dest) {
  printf("movca: not implemented\n");
  exit(1);
}

void icbi(u32 src, u32* dest) {
  printf("icbi: not implemented\n");
  exit(1);
}

void ocbi(u32 src, u32* dest) {
  printf("ocbi: not implemented\n");
  exit(1);
}

void ocbp(u32 src, u32* dest) {
  printf("ocbp: not implemented\n");
  exit(1);
}

void ocbwb(u32 src, u32* dest) {
  printf("ocbwb: not implemented\n");
  exit(1);
}

void prefi(u32 src, u32* dest) {
  printf("prefi: not implemented\n");
  exit(1);
}

void synco(u32 src, u32* dest) {
  printf("synco: not implemented\n");
  exit(1);
}

#include "generated_instructions.h"

void runInstr(u16 instr) {
  void (*instrFunc)(u16) = instructionHandlers[instr];
  instrFunc(instr);
}
