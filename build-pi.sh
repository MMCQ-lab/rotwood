#!/bin/sh
# Build Rotwood Hold on the Raspberry Pi (Debian arm64) and add it to the desktop menu.
set -e
cd "$(dirname "$0")"
DIR="$(pwd)"
if ! command -v sdl2-config >/dev/null 2>&1; then
    echo "Installing SDL2 development files (needs sudo)..."
    sudo apt-get install -y libsdl2-dev
fi
gcc -O2 -std=c99 -o rotwood-hold src/main.c $(sdl2-config --cflags --libs) -lm
mkdir -p "$HOME/.local/share/applications"
cat > "$HOME/.local/share/applications/rotwood-hold.desktop" <<DESK
[Desktop Entry]
Type=Application
Name=Rotwood Hold
Comment=Co-op zombie survival (1-2 players)
Exec=$DIR/rotwood-hold
Path=$DIR
Terminal=false
Categories=Game;
DESK
echo "Built $DIR/rotwood-hold  (menu: Games > Rotwood Hold). Run ./rotwood-hold --window for a window."
