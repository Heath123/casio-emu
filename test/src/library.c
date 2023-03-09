#include "../libs/printf.h"

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
