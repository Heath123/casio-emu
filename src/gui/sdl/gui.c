#include <SDL2/SDL.h>
#include <SDL2/SDL_keycode.h>
#include <SDL2/SDL_timer.h>
#include <stdbool.h>
#include <stdio.h>

#include "../../int.h"

#define RGB(r,g,b) ((((r) >> 1) << 11) | ((g) << 5) | ((b) >> 1))

// int main(int argc, char* argv[]) {
//   return 0;
// }

typedef uint16_t color_t;

SDL_Renderer* renderer;
SDL_Texture* framebuffer;

void initGui(void) {
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

  // Allocate an array to use as the framebuffer data
  // gint_vram = calloc(396 * 224, sizeof(color_t));

//   uint16_t bg_color = RGB(0, 0, 0);

//   // Main loop
//   const int target_frame_time = 1000 / 60;  // 60 FPS
//   uint32_t last_frame_time = SDL_GetTicks();
//   while (1) {
//     // Handle events
//     SDL_Event event;
//     while (SDL_PollEvent(&event)) {
//       switch (event.type) {
//         case SDL_QUIT:
//           goto cleanup;
//           break;
//         case SDL_KEYDOWN:
//           if (event.key.repeat == 0) {
//               if (event.key.keysym.sym == SDLK_SPACE) {
//                 bg_color = RGB(63, 0, 0); // Red
//               } else if (event.key.keysym.sym == SDLK_RETURN) {
//                 bg_color = RGB(0, 63, 0); // Green
//               } else if (event.key.keysym.sym == SDLK_TAB) {
//                 bg_color = RGB(0, 0, 63); // Blue
//               }
//           }
//           break;
//       }
//     }

//     // Update the framebuffer data
//     for (int i = 0; i < 396 * 224; i++) {
//       framebuffer_data[i] = bg_color;
//     }

//     // Update the texture with the new framebuffer data
//     SDL_UpdateTexture(framebuffer, NULL, framebuffer_data, 396 * sizeof(uint16_t));

//     // Clear the renderer and draw the framebuffer texture
//     SDL_RenderClear(renderer);
//     SDL_RenderCopy(renderer, framebuffer, NULL, NULL);
//     SDL_RenderPresent(renderer);

//     // Delay to maintain 60 FPS
//     uint32_t current_time = SDL_GetTicks();
//     uint32_t elapsed_time = current_time - last_frame_time;
//     if (elapsed_time < target_frame_time) {
//       SDL_Delay(target_frame_time - elapsed_time);
//     }
//     last_frame_time = current_time;
//   }

// cleanup:
//   // Clean up resources and quit SDL
//   free(framebuffer_data);
//   SDL_DestroyTexture(framebuffer);
//   SDL_DestroyRenderer(renderer);
//   SDL_DestroyWindow(window);
//   SDL_Quit();
//   return 0;
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
}
