# Credits - Rotwood Hold

An original co-op wave-survival shooter made in 2026 for the MMCQ Field Station.

## Game
- **Design, code, maps, weapons, power-ups:** original to this project (2026). Doom-style raycasting is a general technique; no Doom (or other game) names, maps, art or sounds are used.
- **Demons:** original pixel-art designs based on public-domain scripture (Revelation 9:7-10, 12:7-9, 13:1-2, 16:13). The player archangels follow traditional public-domain iconography of Saint Michael and Gabriel.

## Art
- All textures and sprites (walls, windows, doors, signs, demons, cyber-suit players, power-ups, weapon models) are made by code
  in `src/main.c` when the game starts. No image files or third-party art are used.
- **Font:** an original 5x7 bitmap font, defined in `src/main.c`.

## Sound
- Every sound and the music loop (gunshots, wings, groans, jingles, wind) are made in real time by a small synthesizer in `src/main.c`. No samples are used.

## Libraries and tools
- **SDL2** (zlib licence): https://www.libsdl.org - window, input, gamepads and audio.
- **Zig** (MIT) as the Windows test compiler, and **GCC** on the Pi.

## Third-party assets
None.
