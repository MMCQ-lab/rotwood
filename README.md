# Rotwood Hold

An original 1-2 player co-op zombie-survival shooter in the Doom/Wolfenstein style. It runs natively on the Raspberry Pi 400 (and Windows).
Hold the boarded-up farmhouse wave after wave. Earn money for every hit and kill, rebuild the window boards, buy doors into
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
