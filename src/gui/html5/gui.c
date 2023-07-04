#include <emscripten.h>

#include <stdbool.h>
#include <stdio.h>

#include "../../int.h"

#define RGB(r,g,b) ((((r) >> 1) << 11) | ((g) << 5) | ((b) >> 1))

typedef uint16_t color_t;

#define LCD_WIDTH_PX 396
#define LCD_HEIGHT_PX 224

void initGui(void) {
  emscripten_set_canvas_size(LCD_WIDTH_PX, LCD_HEIGHT_PX);
  EM_ASM_({
    window.canvasContext = Module['canvas'].getContext('2d');
    window.canvasImageData = canvasContext.getImageData(0, 0, 396, 224);
  });
}

void Copy_ToCanvas(uint32_t* ptr) {
  EM_ASM_({
    let data = Module.HEAPU8.slice($0, $0 + 396 * 224 * 4);
    canvasImageData.data.set(data);
    canvasContext.putImageData(canvasImageData, 0, 0);
  }, ptr);
}

void displayUpdateBox(u16* vram, int x, int y, int w, int h) {
  static unsigned int screencopy[LCD_WIDTH_PX * LCD_HEIGHT_PX];
  for (int yPos = y; yPos < y + h; yPos++) {
    for (int xPos = x; xPos < x + w; xPos++) {
      int c = vram[yPos * LCD_WIDTH_PX + xPos];
      // https://gist.github.com/companje/11deb82e807f2cf927b3a0da1646e795#file-rgb565-pde-L8
      unsigned char r = (unsigned char)(((c & 0xF800) >> 11) << 3);
      unsigned char g = (unsigned char)(((c & 0x7E0) >> 5) << 2);
      unsigned char b = (unsigned char)(((c & 0x1F)) << 3);
      unsigned int argb = 0xff000000 | ((int)b << 16) | ((int)g << 8) | (int)r;
      screencopy[yPos * LCD_WIDTH_PX + xPos] = argb;
    }
  }
  Copy_ToCanvas(screencopy);
}


void updateDisplay(u16* vram) {
  displayUpdateBox(vram, 0, 0, LCD_WIDTH_PX, LCD_HEIGHT_PX);
}

// TODO: This doesn't belong in the GUI code
extern u16 KIUDATA[6];

static void setKeydown(int basic_keycode, bool down) {
  // printf("Key %d is now %s\n", basic_keycode, down ? "down" : "up");
  i32 row = basic_keycode % 10;
  i32 col = basic_keycode / 10 - 1;
  i32 word = row >> 1;
  i32 bit = col + 8 * (row & 1);
  if (down) {
    KIUDATA[word] |= 1 << bit;
  } else {
    KIUDATA[word] &= ~(1 << bit);
  }
}

void handleEvents(void) {

}

#define FPS 60
// #define MS_PER_FRAME (1000 / FPS)

void runMainLoop(void (*callback)(void)) {
  emscripten_set_main_loop(callback, FPS, false);
}
