#include <stdbool.h>
#include "../src/int.h"

#ifndef NATIVE
// void (*putchar)(char) = (void (*)(char))0xfffffe08;

// void _putchar(char character) {
//   putchar(character);
// }

#include "printf.h"

// // void (*print)(char*) = (void (*)(char*))0xfffffe00;
// void (*printNum)(int) = (void (*)(int))0xfffffe04;

void Print(const unsigned char *str);
void locate(int x, int y);
int GetKey(unsigned int *keycode);

int line = 1;

void _putchar(char character) {
  if (character == '\n') {
    line++;
    locate(1, line);
  } else {
    char str[2] = {character, 0};
    Print((unsigned char*) str);
  }
}

// memset implementation
void* memset(void* ptr, int value, unsigned int num) {
  unsigned char* p = ptr;
  while (num--) {
    *p++ = value;
  }
  return ptr;
}

// memcpy implementation
void* memcpy(void* dest, const void* src, unsigned int num) {
  unsigned char* d = dest;
  const unsigned char* s = src;
  while (num--) {
    *d++ = *s++;
  }
  return dest;
}

// ___assert_fail
void __assert_fail(char const *__file, int __line, char const *__function, char const *__assertion) {
  printf("Assertion failed: %s, %s, %s, %s\n", __file, __line, __function, __assertion);
  while (1);
}

// strlen implementation
unsigned int strlen(const char* str) {
  unsigned int len = 0;
  while (str[len]) {
    len++;
  }
  return len;
}

// malloc and free with a bump allocator
// Always aligned to 4 bytes

#define BUMP_ALLOCATOR_SIZE 512 * 1024

__attribute__((aligned(4)))
static unsigned char bumpAllocator[BUMP_ALLOCATOR_SIZE];
static unsigned int bumpAllocatorOffset = 0;

void* malloc(unsigned int size) {
  size = (size + 3) & ~3;

  printf("Allocating %d bytes\n", size);
  if (bumpAllocatorOffset + size > BUMP_ALLOCATOR_SIZE) {
    printf("Out of memory!\n");
    while (1);
  }

  void* ptr = &bumpAllocator[bumpAllocatorOffset];
  bumpAllocatorOffset += size;
  return ptr;
}

void free(void* ptr) {
  // Do nothing
}

// realloc implementation
void* realloc(void* ptr, unsigned int size) {
  void* newPtr = malloc(size);
  memcpy(newPtr, ptr, size);
  return newPtr;
}

#else
#include <stdio.h>
#include <stdlib.h>
void locate(int x, int y) {}
#endif

#include "miniz.h"

int __eqsf2(float a, float b);

#define PRINTF_FTOA_BUFFER_SIZE    32U
#define PRINTF_DEFAULT_FLOAT_PRECISION  6U
#define FLAGS_ZEROPAD   (1U <<  0U)
#define FLAGS_LEFT      (1U <<  1U)
#define FLAGS_PLUS      (1U <<  2U)
#define FLAGS_SPACE     (1U <<  3U)
// internal ftoa for fixed decimal floating point
int _ftoa(char* buf, size_t idx, size_t maxlen, double value, unsigned int prec, unsigned int width, unsigned int flags)
{
  // char buf[PRINTF_FTOA_BUFFER_SIZE];
  size_t len  = 0U;
  double diff = 0.0;

  // powers of 10
  static const double pow10[] = { 1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000 };

  // test for negative
  bool negative = false;
  if (value < 0) {
    negative = true;
    value = 0 - value;
  }

  // set default precision, if not set explicitly
  // if (!(flags & FLAGS_PRECISION)) {
    prec = PRINTF_DEFAULT_FLOAT_PRECISION;
  // }
  // limit precision to 9, cause a prec >= 10 can lead to overflow errors
  while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
    buf[len++] = '0';
    prec--;
  }

  int whole = (int)value;
  double tmp = (value - whole) * pow10[prec];
  unsigned long frac = (unsigned long)tmp;
  diff = tmp - frac;

  if (diff > 0.5) {
    ++frac;
    // handle rollover, e.g. case 0.99 with prec 1 is 1.0
    if (frac >= pow10[prec]) {
      frac = 0;
      ++whole;
    }
  }
  else if (diff < 0.5) {
  }
  else if ((frac == 0U) || (frac & 1U)) {
    // if halfway, round up if odd OR if last digit is 0
    ++frac;
  }

  if (prec == 0U) {
    diff = value - (double)whole;
    if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
      // exactly 0.5 and ODD, then round up
      // 1.5 -> 2, but 2.5 -> 2
      ++whole;
    }
  }
  else {
    unsigned int count = prec;
    // now do fractional part, as an unsigned number
    while (len < PRINTF_FTOA_BUFFER_SIZE) {
      --count;
      buf[len++] = (char)(48U + (frac % 10U));
      if (!(frac /= 10U)) {
        break;
      }
    }
    // add extra 0s
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
      buf[len++] = '0';
    }
    if (len < PRINTF_FTOA_BUFFER_SIZE) {
      // add decimal
      buf[len++] = '.';
    }
  }

  // do whole part, number is reversed
  while (len < PRINTF_FTOA_BUFFER_SIZE) {
    buf[len++] = (char)(48 + (whole % 10));
    if (!(whole /= 10)) {
      break;
    }
  }

  // pad leading zeros
  if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
    if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
      width--;
    }
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
      buf[len++] = '0';
    }
  }

  if (len < PRINTF_FTOA_BUFFER_SIZE) {
    if (negative) {
      buf[len++] = '-';
    }
    else if (flags & FLAGS_PLUS) {
      buf[len++] = '+';  // ignore the space if the '+' exists
    }
    else if (flags & FLAGS_SPACE) {
      buf[len++] = ' ';
    }
  }
}

// extern u32 bbss;
// extern u32 ebss;

// RW initialized data test
int data[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

double __adddf3 (double a, double b);
double __extendsfdf2 (float a);

int main(void) {
  locate(1, 1);

  // volatile float a = (float) 1.0;
  // a += (float) 1.0;
  // printf("a = %08x\n", *(int*)&a);

  // volatile float a = 1.0;
  // double b = a + 1.0;
  // printf("b = %08x\n", *(int*)&b);

  volatile float a = 1.0;
  a += 1.0;
  printf("a = %f\n", a);

  unsigned int key;
  // GetKey(&key);
  // return *(int*)&a;

  // u8* n = (u8*) 100;
  // u8* s = (u8*) 100;
  // int a = 0;
  // int b = (n < s);
  // printf("a: %d, b: %d\n", a, b);
  // printNum(a);
  // printNum(b);
  // printf("res: %d\n", a || (n < s));
  // printNum(a || (n < s));

  // Print all the data
  // for (int i = 0; i < 10; i++) {
  //   printf("data[%d] = %d\n", i, data[i]);
  // }
  // printf("data[9] = %d\n", data[9]);
  
  // printf("bss: %08x, ebss: %08x\n", bbss, ebss);
  // printf("%f\n", 1.2345);

  // Use ftoa on 1.2345
  // char buf[100] = {0};
  // _ftoa(buf, 0, -1, 1.2345, 0, 0, 0);
  // printf("ftoa: %s\n", buf);

  // volatile float a = 1.0;
  // printf("a = %08x\n", *(int*)&a);
  // a += 1.0;
  // printf("a = %08x\n", *(int*)&a);
  // a += 1.0;
  // printf("a = %08x\n", *(int*)&a);

  // printf("a == a: %d\n", a == a);
  // printNum(__eqsf2(a, a));


  // a += 123.0;

  // printf("a = %08x\n", *(int*)&a);

  // // Decompress with miniz
  // // 'x\xda\xf3H\xcd\xc9\xc9W(\xcf/\xcaIQTT\x04\x00&(\x04\xa0'
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

  // unsigned int key;
  // GetKey(&key);

  return 0;
}

// int main(void) {
//   volatile float a = 1.0;
//   return a == a ? 1 : 0;
// }

// int main() {
//   u8* n = (u8*) 100;
//   u8* s = (u8*) 100;
//   int a = 0;
//   return (a || (n < s));
// }
