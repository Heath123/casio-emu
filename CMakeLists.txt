cmake_minimum_required(VERSION 3.25)
project(calcemu)

set(SOURCES
  src/interpreter.c
  src/instructions.c
  src/interrupts.c
  src/hardware/display/display.c
  src/hardware/timers/timers.c
  src/hardware/tlb/tlb.c
  src/memory/memory.c
  src/memory/specialAddrs.c

  src/gui/sdl/gui.c
)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})
link_libraries(${SDL2_LIBRARIES})

add_executable(calcemu ${SOURCES})
target_compile_options(calcemu PRIVATE -O3 -flto)