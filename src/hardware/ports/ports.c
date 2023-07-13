#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "../../int.h"
#include "../hwRegisters.h"

u16 PACR = 0;
u16 PBCR = 0;
u16 PCCR = 0;
u16 PDCR = 0;
u16 PECR = 0;
u16 PFCR = 0;
u16 PGCR = 0;
u16 PHCR = 0;
u16 PJCR = 0;
u16 PKCR = 0;
u16 PLCR = 0;
u16 PMCR = 0;
u16 PNCR = 0;
u16 PPCR = 0;
u16 PQCR = 0;
u16 PRCR = 0;
u16 PSCR = 0;
u16 PTCR = 0;
u16 PUCR = 0;
u16 PVCR = 0;

u8 PADR = 0;
u8 PBDR = 0;
u8 PCDR = 0;
u8 PDDR = 0;
u8 PEDR = 0;
u8 PFDR = 0;
u8 PGDR = 0;
u8 PHDR = 0;
u8 PJDR = 0;
u8 PKDR = 0;
u8 PLDR = 0;
u8 PMDR = 0;
u8 PNDR = 0;
u8 PPDR = 0;
u8 PQDR = 0;
// u8 PRDR = 0;
u8 PSDR = 0;
u8 PTDR = 0;
u8 PUDR = 0;
u8 PVDR = 0;

u16 PSELA = 0;
u16 PSELB = 0;
u16 PSELC = 0;
u16 PSELD = 0;
u16 PSELE = 0;
u16 PSELF = 0;
u16 PSELG = 0;
u16 PSELH = 0;

u16 HIZCRA = 0;
u16 HIZCRB = 0;
u16 HIZCRC = 0;
u16 MSELCRA = 0;
u16 MSELCRB = 0;
u16 DRVCRA = 0;
u16 DRVCRB = 0;
u16 DRVCRC = 0;
u16 DRVCRD = 0;
u8 PULCRBSC = 0;
u8 PULCRTRST = 0;
u8 PULCRA = 0;
u8 PULCRB = 0;
u8 PULCRC = 0;
u8 PULCRD = 0;
u8 PULCRE = 0;
u8 PULCRF = 0;
u8 PULCRG = 0;
u8 PULCRH = 0;
u8 PULCRJ = 0;
u8 PULCRK = 0;
u8 PULCRL = 0;
u8 PULCRM = 0;
u8 PULCRN = 0;
u8 PULCRP = 0;
u8 PULCRQ = 0;
u8 PULCRR = 0;
u8 PULCRS = 0;
u8 PULCRT = 0;
u8 PULCRU = 0;
u8 PULCRV = 0;

// TODO: This doesn't belong here
// u32 SDCR = 0;

void initPorts(void) {
  defineReg("Port A Control", PACR, 0xa4050100);
  defineReg("Port B Control", PBCR, 0xa4050102);
  defineReg("Port C Control", PCCR, 0xa4050104);
  defineReg("Port D Control", PDCR, 0xa4050106);
  defineReg("Port E Control", PECR, 0xa4050108);
  defineReg("Port F Control", PFCR, 0xa405010a);
  defineReg("Port G Control", PGCR, 0xa405010c);
  defineReg("Port H Control", PHCR, 0xa405010e);
  defineReg("Port J Control", PJCR, 0xa4050110);
  defineReg("Port K Control", PKCR, 0xa4050112);
  defineReg("Port L Control", PLCR, 0xa4050114);
  defineReg("Port M Control", PMCR, 0xa4050116);
  defineReg("Port N Control", PNCR, 0xa4050118);
  defineReg("Port P Control", PPCR, 0xa405014c);
  defineReg("Port Q Control", PQCR, 0xa405011a);
  defineReg("Port R Control", PRCR, 0xa405011c);
  defineReg("Port S Control", PSCR, 0xa405011e);
  defineReg("Port T Control", PTCR, 0xa4050140);
  defineReg("Port U Control", PUCR, 0xa4050142);
  defineReg("Port V Control", PVCR, 0xa4050144);

  defineReg("Data pin Hi-Z control A", HIZCRA, 0xa4050158);
  defineReg("Data pin Hi-Z control B", HIZCRB, 0xa405015a);
  defineReg("Data pin Hi-Z control C", HIZCRC, 0xa405015c);
  defineReg("Module function select A", MSELCRA, 0xa4050180);
  defineReg("Module function select B", MSELCRB, 0xa4050182);
  defineReg("Buffer drive control A", DRVCRA, 0xa4050186);
  defineReg("Buffer drive control B", DRVCRB, 0xa4050188);
  defineReg("Buffer drive control C", DRVCRC, 0xa405018a);
  defineReg("Buffer drive control D", DRVCRD, 0xa4050184);
  defineReg("BSC pull-up/down control", PULCRBSC, 0xa40501c3);
  defineReg("TRST pull-up/down select", PULCRTRST, 0xa40501c5);
  defineReg("Port A pull-up/down control", PULCRA, 0xa4050190);
  defineReg("Port B pull-up/down control", PULCRB, 0xa4050191);
  defineReg("Port C pull-up/down control", PULCRC, 0xa4050192);
  defineReg("Port D pull-up/down control", PULCRD, 0xa4050193);
  defineReg("Port E pull-up/down control", PULCRE, 0xa4050194);
  defineReg("Port F pull-up/down control", PULCRF, 0xa4050195);
  defineReg("Port G pull-up/down control", PULCRG, 0xa4050196);
  defineReg("Port H pull-up/down control", PULCRH, 0xa4050197);
  defineReg("Port J pull-up/down control", PULCRJ, 0xa4050198);
  defineReg("Port K pull-up/down control", PULCRK, 0xa4050199);
  defineReg("Port L pull-up/down control", PULCRL, 0xa405019a);
  defineReg("Port M pull-up/down control", PULCRM, 0xa405019b);
  defineReg("Port N pull-up/down control", PULCRN, 0xa405019c);
  defineReg("Port P pull-up/down control", PULCRP, 0xa40501c6);
  defineReg("Port Q pull-up/down control", PULCRQ, 0xa405019d);
  defineReg("Port R pull-up/down control", PULCRR, 0xa405019e);
  defineReg("Port S pull-up/down control", PULCRS, 0xa405019f);
  defineReg("Port T pull-up/down control", PULCRT, 0xa40501c0);
  defineReg("Port U pull-up/down control", PULCRU, 0xa40501c1);
  defineReg("Port V pull-up/down control", PULCRV, 0xa40501c2);

  defineReg("Port A data", PADR, 0xa4050120);
  defineReg("Port B data", PBDR, 0xa4050122);
  defineReg("Port C data", PCDR, 0xa4050124);
  defineReg("Port D data", PDDR, 0xa4050126);
  defineReg("Port E data", PEDR, 0xa4050128);
  defineReg("Port F data", PFDR, 0xa405012a);
  defineReg("Port G data", PGDR, 0xa405012c);
  defineReg("Port H data", PHDR, 0xa405012e);
  defineReg("Port J data", PJDR, 0xa4050130);
  defineReg("Port K data", PKDR, 0xa4050132);
  defineReg("Port L data", PLDR, 0xa4050134);
  defineReg("Port M data", PMDR, 0xa4050136);
  defineReg("Port N data", PNDR, 0xa4050138);
  defineReg("Port P data", PPDR, 0xa405016a);
  defineReg("Port Q data", PQDR, 0xa405013a);
  // defineReg("Port R data", PRDR, 0xa405013c);
  defineReg("Port S data", PSDR, 0xa405013e);
  defineReg("Port T data", PTDR, 0xa4050160);
  defineReg("Port U data", PUDR, 0xa4050162);
  defineReg("Port V data", PVDR, 0xa4050164);

  defineReg("Pin group A select", PSELA, 0xa405014e);
  defineReg("Pin group B select", PSELB, 0xa4050150);
  defineReg("Pin group C select", PSELC, 0xa4050152);
  defineReg("Pin group D select", PSELD, 0xa4050154);
  defineReg("Pin group E select", PSELE, 0xa4050156);
  defineReg("Pin group F select", PSELF, 0xa405015e);
  defineReg("Pin group G select", PSELG, 0xa40501c8);
  defineReg("Pin group H select", PSELH, 0xa40501d6);

  // defineReg("Port P pull-up/down control", PULCRP, 0xa40501c6);

  // defineReg("SDRAM control", SDCR, 0xfec10044);
}
