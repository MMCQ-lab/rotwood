# Rotwood Hold

An original 1-2 player co-op survival shooter in the Doom style (pixel-art sprites in a 3D world). It runs natively on the Raspberry Pi 400 (and Windows).
You and a partner, in armoured cyber suits, hold out against waves of demons from the Abyss across five maps (Rotwood Farm, Gullwatch Light, Millbrook Mill, Hollow Chapel, Ironvale Depot). Every wave is harder; survive wave 99 to see the dawn. Earn money for every hit and kill, rebuild the window boards, buy doors into
new rooms and weapons drawn in chalk on the walls, and revive your partner when they go down.

## Controls
| | Player 1 (keyboard) | Player 2 (keyboard) | Gamepad |
|---|---|---|---|
| Move / turn | W S / A D | Up Down / Left Right | Left stick / right stick (or d-pad) |
| Strafe | Q E | , . | LB RB |
| Fire | Space | Enter | A or RT |
| Use (buy, rebuild, revive) | F | Right Shift | B |
| Reload | R | / | X |
| Swap weapon | C | ' | Y |

Title screen: press **1** or **2** for the number of players, or A on a gamepad. **Esc** pauses (Q quits to the title),
**F11** toggles fullscreen and **F12** saves a screenshot.

Weapons: Peashooter (start), Barn Blaster $900, Chopper $1200, Longshot $1500. Buying a weapon you already own refills its ammo for half price.
Power-ups: **A** Ammo Crate, **F** Firestorm (clears the wave), **$** Gold Rush (double pay for 30 s).

## Build and run on the Pi
Copy the folder to the Pi (from PowerShell on the PC):

    ssh mmcq@aliens-pi "mkdir -p ~/games/rotwood-hold"
    scp -r C:\Users\Matth\repos\rotwood-hold\src C:\Users\Matth\repos\rotwood-hold\build-pi.sh mmcq@aliens-pi:~/games/rotwood-hold/

Then on the Pi:

    sh ~/games/rotwood-hold/build-pi.sh
    ~/games/rotwood-hold/rotwood-hold

## Build on Windows (for testing)
`build.bat` (needs Zig in `C:\tools\zig` and SDL2 in `C:\tools\SDL2`). `build\rotwood-hold.exe --autotest 120` runs a
2-bot test that checks buying, prints stats and saves screenshots.

## The demons (drawn from their descriptions in scripture)
| In game | Source | What it does |
|---|---|---|
| Locust of the Abyss | Revelation 9:7-10: shaped like horses ready for battle, gold crowns, men's faces, women's hair, lions' teeth, iron breastplates, loud wings, scorpion tails | The main enemy. Some run. |
| Unclean spirit "like a frog" | Revelation 16:13 | Fast and low to the ground, from wave 6 |
| Legion | Mark 5:9, "we are many": many faces in one body | Slow and tough. It bursts when killed and hurts everyone nearby, from wave 8 |
| The Beast from the sea | Revelation 13:1-2: seven heads, ten horns with ten crowns, a leopard's body, a bear's feet, a lion's mouth | A boss every 5th wave. It smashes window boards in one hit |

## Extras
Upgrade bench (each gun up to +3), electric fence trap ($1000), and a supply shelf: Vest ($2500, 175 health), Quick Hands ($2000, reload twice as fast), and Pack Strap ($3000, carry 3 guns). The Options menu has volume, music, turn speed, split screen side-by-side or top/bottom, and fullscreen.

## Test tools (Windows build)
`--validate` checks all maps. `--autotest SECS --map N --players 1|2 --start-wave W` runs bots and a purchase test and saves screenshots. `--sprites` saves a sprite sheet.
