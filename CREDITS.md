# Credits - Rotwood Hold

An original co-op wave-survival shooter made in 2026 for the MMCQ Field Station.

## Game
- **Design, code, map, weapons, power-ups:** original to this project (2026). It belongs to the zombie-survival genre but
  uses no names, maps, characters, items or sounds from any other game.

## Art
- All textures and sprites (walls, windows, doors, wall-buy signs, zombies, players, power-ups, weapon models) are made by code
  in `src/main.c` when the game starts. No image files or third-party art are used.
- **Font:** an original 5x7 bitmap font, defined in `src/main.c`.

## Sound
- Every sound (gunshots, groans, jingles) is made in real time by a small synthesizer in `src/main.c`. No samples are used.

## Libraries and tools
- **SDL2** (zlib licence): https://www.libsdl.org - window, input, gamepads and audio.
- **Zig** (MIT) as the Windows test compiler, and **GCC** on the Pi.

## Third-party assets
None.
