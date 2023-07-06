#include <SDL2/SDL.h>
#include <SDL2/SDL_keycode.h>
#include <SDL2/SDL_timer.h>
#include <stdbool.h>
#include <stdio.h>

#include "../../int.h"
#include "../../interpreter.h"
#include "../../hardware/keyboard/keyboard.h"

#define RGB(r,g,b) ((((r) >> 1) << 11) | ((g) << 5) | ((b) >> 1))

// int main(int argc, char* argv[]) {
//   return 0;
// }

typedef uint16_t color_t;

SDL_Renderer* renderer;
SDL_Texture* framebuffer;

int main(int argc, char* argv[]) {
  if (argc != 2) {
    printf("Usage: %s <path to g3a>\n", argv[0]);
    exit(1);
  }

  // Initialize SDL
  if (SDL_Init(SDL_INIT_VIDEO) != 0) {
    SDL_Log("Failed to initialize SDL: %s", SDL_GetError());
    exit(1);
  }

  // Create a window and renderer
  SDL_Window* window = SDL_CreateWindow("Emulator", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 396, 224, 0);
  if (!window) {
    SDL_Log("Failed to create window: %s", SDL_GetError());
    exit(1);
  }
  renderer = SDL_CreateRenderer(window, -1, 0);
  if (!renderer) {
    SDL_Log("Failed to create renderer: %s", SDL_GetError());
    exit(1);
  }

  // Create a texture to use as a framebuffer
  framebuffer = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_RGB565, SDL_TEXTUREACCESS_STREAMING, 396, 224);
  if (!framebuffer) {
    SDL_Log("Failed to create framebuffer: %s", SDL_GetError());
    exit(1);
  }

  startInterpreter(argv[1]);
}

// Uint32 lastUpdateTime = 0;
void updateDisplay(u16* vram) {
  // printf("updateDisplay called\n");
  SDL_UpdateTexture(framebuffer, NULL, vram, 396 * sizeof(uint16_t));
  SDL_RenderClear(renderer);
  SDL_RenderCopy(renderer, framebuffer, NULL, NULL);
  SDL_RenderPresent(renderer);

  // Sleep for 3 seconds
  // SDL_Delay(3000);

  // Uint32 currentTime = SDL_GetTicks();
  // Uint32 passed = currentTime - lastUpdateTime;
  // printf("Frame time: %d\n", passed);
  // lastUpdateTime = currentTime;
}

void handleEvents(void) {
  // Handle events
  SDL_Event event;
  while (SDL_PollEvent(&event)) {
    switch (event.type) {
      case SDL_QUIT:
        exit(0);
        break;
      // Window repaint
      case SDL_WINDOWEVENT:
        if (event.window.event == SDL_WINDOWEVENT_EXPOSED) {
          SDL_RenderPresent(renderer);
        }
        break;
      // Enter is assigned to EXE (key code 31)
      case SDL_KEYDOWN:
        if (event.key.repeat == 0) {
          // Enter
          if (event.key.keysym.sym == SDLK_RETURN) {
            setKeydown(31, true);
          }
          // Up
          else if (event.key.keysym.sym == SDLK_UP) {
            setKeydown(28, true);
          }
          // Down
          else if (event.key.keysym.sym == SDLK_DOWN) {
            setKeydown(37, true);
          }
          // Left
          else if (event.key.keysym.sym == SDLK_LEFT) {
            setKeydown(38, true);
          }
          // Right
          else if (event.key.keysym.sym == SDLK_RIGHT) {
            setKeydown(27, true);
          }
          // 1
          else if (event.key.keysym.sym == SDLK_1) {
            setKeydown(72, true);
          }
          // +
          else if (event.key.keysym.sym == SDLK_EQUALS) {
            setKeydown(42, true);
          }
          // x
          else if (event.key.keysym.sym == SDLK_x) {
            // setKeydown(76, true);
            // Changed to Shift
            setKeydown(78, true);
          }
          // Squared
          else if (event.key.keysym.sym == SDLK_2) {
            setKeydown(76, true);
          }
          // sin
          else if (event.key.keysym.sym == SDLK_s) {
            setKeydown(46, true);
          }
          // F1
          else if (event.key.keysym.sym == SDLK_F1) {
            setKeydown(79, true);
          }
          // F2
          else if (event.key.keysym.sym == SDLK_F2) {
            setKeydown(69, true);
          }
          // F3
          else if (event.key.keysym.sym == SDLK_F3) {
            setKeydown(59, true);
          }
          // F4
          else if (event.key.keysym.sym == SDLK_F4) {
            setKeydown(49, true);
          }
          // F5
          else if (event.key.keysym.sym == SDLK_F5) {
            setKeydown(39, true);
          }
          // F6
          else if (event.key.keysym.sym == SDLK_F6) {
            setKeydown(29, true);
          }
          // Exit
          else if (event.key.keysym.sym == SDLK_BACKSPACE) {
            setKeydown(47, true);
          }
        }
        break;
      case SDL_KEYUP:
        if (event.key.repeat == 0) {
          // Enter
          if (event.key.keysym.sym == SDLK_RETURN) {
            setKeydown(31, false);
          }
          // Up
          else if (event.key.keysym.sym == SDLK_UP) {
            setKeydown(28, false);
          }
          // Down
          else if (event.key.keysym.sym == SDLK_DOWN) {
            setKeydown(37, false);
          }
          // Left
          else if (event.key.keysym.sym == SDLK_LEFT) {
            setKeydown(38, false);
          }
          // Right
          else if (event.key.keysym.sym == SDLK_RIGHT) {
            setKeydown(27, false);
          }
          // 1
          else if (event.key.keysym.sym == SDLK_1) {
            setKeydown(72, false);
          }
          // +
          else if (event.key.keysym.sym == SDLK_EQUALS) {
            setKeydown(42, false);
          }
          // x
          else if (event.key.keysym.sym == SDLK_x) {
            // setKeydown(76, false);
            // Changed to Shift
            setKeydown(78, false);
          }
          // Squared
          else if (event.key.keysym.sym == SDLK_2) {
            setKeydown(76, false);
          }
          // sin
          else if (event.key.keysym.sym == SDLK_s) {
            setKeydown(46, false);
          }
          // F1
          else if (event.key.keysym.sym == SDLK_F1) {
            setKeydown(79, false);
          }
          // F2
          else if (event.key.keysym.sym == SDLK_F2) {
            setKeydown(69, false);
          }
          // F3
          else if (event.key.keysym.sym == SDLK_F3) {
            setKeydown(59, false);
          }
          // F4
          else if (event.key.keysym.sym == SDLK_F4) {
            setKeydown(49, false);
          }
          // F5
          else if (event.key.keysym.sym == SDLK_F5) {
            setKeydown(39, false);
          }
          // F6
          else if (event.key.keysym.sym == SDLK_F6) {
            setKeydown(29, false);
          }
          // Exit
          else if (event.key.keysym.sym == SDLK_BACKSPACE) {
            setKeydown(47, false);
          }
        }
        break;
    }
  }
}

// TODO: Make this more precise
#define FPS 60
#define MS_PER_FRAME (1000 / FPS)

bool firstFrame = true;
Uint32 lastTime = 0;
void delayFrame(void) {
  Uint32 currentTime = SDL_GetTicks();
  if (firstFrame) {
    firstFrame = false;
    lastTime = currentTime;
    return;
  }
  int elapsedTime = currentTime - lastTime;
  // printf("Elapsed: %dms\n", elapsedTime);
  int remainingTime = MS_PER_FRAME - elapsedTime;
  if (remainingTime > 0) {
    // Use SDL_Delay to wait for the remaining time
    // printf("Waiting %dms\n", remainingTime);
    SDL_Delay(remainingTime);
  }
  lastTime = currentTime;
  handleEvents();
}

void runMainLoop(void (*callback)(void)) {
  while (true) {
    callback();
    delayFrame();
  }
}
