#include <stdbool.h>
#include "../../src/int.h"

#include "../libs/printf.h"
#include "../libs/miniz.h"

// RW initialized data test
int data[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

// Based on https://cs.uwaterloo.ca/~alopez-o/math-faq/mathtext/node12.html
int a=10000,b,c=2800,d,e,f[2801],g;pi(){for(;b-c;)f[b++]=a/5;
for(;d=0,g=c*2;c-=14,printf("%.4d",e+d/a),e=d%a)for(b=c;d+=f[b]*a,
f[b]=d%--g,d/=g--,--b;d*=b);}

int main(void) {
  printf("data[9] = %d\n", data[9]);
  
  printf("Pi to 800 digits:\n");
  pi();
  printf("\n");

  volatile float a = 1.0;
  a += 1.0;
  a /= 4.0;
  printf("a = %f\n", a);

  unsigned char compressed[] = {120,218,243,72,205,201,201,87,40,207,47,202,73,81,84,84,4,0,38,40,4,160};

  unsigned char decompressed[100];
  unsigned long decompressedSize = 14;

  int result = mz_uncompress(decompressed, &decompressedSize, compressed, sizeof(compressed));

  // // Null terminate
  decompressed[decompressedSize] = 0;

  if (result != MZ_OK) {
    printf("Error decompressing: %s\n", mz_error(result));
    return 1;
  }

  printf("Length: %d\n", strlen(decompressed));
  printf("Decompressed: %s\n", decompressed);

  return 0;
}
