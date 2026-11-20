# Rotwood Hold

An original 1-2 player co-op survival shooter in the Doom style (pixel-art sprites in a 3D world). It runs natively on the Raspberry Pi 400 (and Windows).
You play Adam (P1) and Eve (P2), in fig-leaf aprons (Genesis 3:7), and hold out against waves of demons from the Abyss across five maps (Rotwood Farm, Gullwatch Light, Millbrook Mill, Hollow Chapel, Ironvale Depot). Every wave is harder; survive wave 99 to see the dawn. Earn money for every hit and kill, rebuild the window boards, buy doors into
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

Weapons (Old Testament): **David's Sling** (start, 1 Samuel 17:49), **Samson's Jawbone** $900 (melee, Judges 15:15), **Jonathan's Bow** $1200 (2 Samuel 1:22), **Saul's Javelin** $1500 (pierces, 1 Samuel 18:11), **Goliath's Sword** $3000 (melee, 1 Samuel 21:9). Melee weapons need no ammo. Buying a ranged weapon you already own refills its ammo for half price.
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
| Fallen angel | Revelation 12:7-9: "the dragon fought and his angels" and were cast out by Michael. Drawn like the devil under Saint Michael in the old paintings: horns, bat wings, goat legs, claws, barbed tail | Slow and tough. It bursts into flame when killed and hurts everyone nearby, from wave 8 |
| The Beast from the sea | Revelation 13:1-2: seven heads, ten horns with ten crowns, a leopard's body, a bear's feet, a lion's mouth | A boss every 5th wave. It smashes window boards in one hit |

## Extras
Upgrade bench (each gun up to +3), electric fence trap ($1000), and a supply shelf: Vest ($2500, 175 health), Quick Hands ($2000, reload twice as fast), and Pack Strap ($3000, carry 3 guns). The Options menu has volume, music, turn speed, split screen side-by-side or top/bottom, and fullscreen.

## Test tools (Windows build)
`--validate` checks all maps. `--autotest SECS --map N --players 1|2 --start-wave W` runs bots and a purchase test and saves screenshots. `--sprites` saves a sprite sheet.

## Aim assist
Made for keyboards and gamepads (there's no mouse aiming). Your view is pulled gently toward the nearest demon in front of you, and shots bend onto it. Set it to Off, Low or High (the default) in Options.


## Wave sizes
The number of demons in each wave follows the Fibonacci sequence. Endless mode uses wave N = Fib(N): 1, 1, 2, 3, 5, 8, 13 ... Wave 20 has 6,765 demons and wave 30 has 832,040, so the late waves pour in very fast. Campaign chapters start at the 4th term (3, 5, 8, 13 ...).

## Campaign: the 66 books (replaces the 7 chapters)
One level for every book of the Bible, Genesis to Revelation. Each opens with a verse from that book, quoted word for word from the King James Version (public domain), and you survive 3 waves to finish it. Every sixth book a Beast rises, Mark (5:9, "we are many") brings the fallen angels, and Revelation ends with the great red Dragon. Your weapons and money carry over when you go straight on to the next book.

## Inferno: Dante's nine circles
Ten waves in each circle of Dante's *Inferno* (quotations from Longfellow's 1867 translation, public domain). After the 10th wave the sealed gate opens, and walking through it takes you down to the next circle with your loadout. Escape the ninth circle to win.

| Circle | Hazard |
|---|---|
| I Limbo | Pits to jump |
| II Lust | The hurricane pushes you around |
| III Gluttony | Freezing mire slows you |
| IV Greed | Chasms |
| V Wrath | The marsh of Styx slows you |
| VI Heresy | Burning tombs hurt to stand on |
| VII Violence | A river of boiling blood to jump |
| VIII Fraud | The ditches of Malebolge |
| IX Treachery | Slippery ice, and Lucifer frozen in it (three faces, six bat wings) |

**Jumping:** P1 Left Shift (or V), P2 Right Ctrl, gamepad RB. If you fall into a pit or the river you take damage and land back at the edge. Demons fly over gaps.

All Bible and Inferno levels are generated from fixed seeds, and `--validate` checks every one of them.

## When you fall
The game-over screen reads **GOD SAVED YOUR SOUL**, with a cross beneath.
