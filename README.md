# casio-emu

A work-in-porgress emulator for the Casio CG50 calculator. It currently runs many add-ins created with [gint](https://gitea.planet-casio.com/Lephenixnoir/gint) quite well.

## Limitations
- This does not attempt to emulate syscalls or the OS yet, so PrizmSDK add-ins will not work
- Add-ins that use the USB driver will not boot
- The code is quite messy and inaccurate sometimes.

## Building

```
mkdir build
# If you want to build the SDL GUI rather than Qt one, add -DUSE_SDL_GUI=ON
# For the Emscripten build, use emcmake and emmake
cmake . -B build
make -C build
./build/calcemu [optional path to g3a]
```

## Screenshots

![image](https://github.com/Heath123/casio-emu/assets/13787163/03a674c3-fee9-48cd-81ff-23afdcd4bc36)
![image](https://github.com/Heath123/casio-emu/assets/13787163/c24f0402-ce9f-4bb8-b256-72f8bb95bcd5)
![image](https://github.com/Heath123/casio-emu/assets/13787163/4eaf91d2-390c-4a67-932f-de5355747d50)
![image](https://github.com/Heath123/casio-emu/assets/13787163/d8d9a167-6cfa-4118-8d86-d8726d83020c)
![image](https://github.com/Heath123/casio-emu/assets/13787163/a40bcb45-8c40-4c8d-8934-732fe8ad300e)
![image](https://github.com/Heath123/casio-emu/assets/13787163/1c423c2e-020c-4871-ac53-88ef4497fcb3)


## Mapping of keys on Qt version of CalcEmu versus fxCG50 keycodes and keynames

KeyName on PC  | KeyCode of fxCG50  | keyName
------------- |------------- |------------- |
F1 | 79 | [F1]
F2 | 69 | [F2]
F3 | 59 | [F3]
F4 | 49 | [F4]
F5 | 39 | [F5]
F6 | 29 | [F6]
Shift | 78 | [Shift] 
CapsLock | 77 | [Alpha]
Tab | 48 | [Menu]
Escape | 47 | [Exit]
Left | 38 | [Left Arrow]
Up | 28 | [Up Arrow]
Right | 27 | [Right Arrow]
Down | 37 | [Down Arrow]
0 | 71 | [0]
1 | 72 | [1]
2 | 62 | [2]
3 | 52 | [3]
4 | 73 | [4]
5 | 63 | [5]
6 | 53 | [6]
7 | 74 | [7]
8 | 64 | [8]
9 | 54 | [9]
Slash | 33 | [/]
Asterisk | 43 | [*]
Delete | 44 | [DEL]
Period | 61 | [.]
Minus | 32 | [-]
Plus | 42 | [+]
Enter | 31 | [EXE]