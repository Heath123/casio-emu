cmake_minimum_required(VERSION 3.25)
project(calcemu)

option(USE_SDL_GUI "Use the SDL GUI instead of Qt" OFF)

set(SOURCES
  src/interpreter.c
  src/instructions.c
  src/interrupts.c
  src/hardware/cpuRegisters/cpuRegisters.c
  src/hardware/display/display.c
  src/hardware/dma/dma.c
  src/hardware/intc/intc.c
  src/hardware/keyboard/keyboard.c
  src/hardware/power/power.c
  src/hardware/timers/timers.c
  src/hardware/tlb/tlb.c
  src/hardware/rtc/rtc.c
  src/hardware/ports/ports.c
  src/hardware/adc/adc.c
  src/hardware/bcd/bcd.c
  src/memory/memory.c
  src/memory/specialAddrs.c
)

if(EMSCRIPTEN)
  set(SOURCES ${SOURCES}
    src/gui/html5/gui.c
  )

  set(CMAKE_EXECUTABLE_SUFFIX ".html")
  add_executable(calcemu ${SOURCES})
  # -fsanitize=undefined on both
  target_compile_options(calcemu PRIVATE -Wall -Wextra -Werror=implicit-function-declaration -Werror=incompatible-pointer-types -O3 -flto -g -sSTACK_SIZE=1048576)
  target_link_options(calcemu PRIVATE --shell-file=../src/gui/html5/gui.html -g -sSTACK_SIZE=1048576 -sALLOW_MEMORY_GROWTH -sEXPORTED_FUNCTIONS=_setKeydown,_main -sEXPORTED_RUNTIME_METHODS=ccall,cwrap --embed-file=Addin.g3a)
elseif(USE_SDL_GUI)
  set(SOURCES ${SOURCES}
    src/gui/sdl/gui.c
  )

  find_package(SDL2 REQUIRED)
  include_directories(${SDL2_INCLUDE_DIRS})
  link_libraries(${SDL2_LIBRARIES})

  add_executable(calcemu ${SOURCES})
  target_compile_options(calcemu PRIVATE -O3 -flto -g)
else()
  set(SOURCES ${SOURCES}
    src/gui/qt/gui.cpp
  )

  set(CMAKE_AUTOMOC ON)

  find_package(Qt5 COMPONENTS Widgets REQUIRED)

  add_executable(calcemu ${SOURCES})
  target_compile_options(calcemu PRIVATE -O3 -flto -g)
  target_link_libraries(calcemu PRIVATE Qt5::Widgets)
endif()
