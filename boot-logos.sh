#!/data/data/com.termux/files/usr/bin/bash
# GitHubSetup — 20 cinematic, harmless Termux boot-screen designs
# Visual effects only: no scanning, network access, privilege changes or intrusion.
set -u
if [ -z "\${PREFIX:-}" ] || [ ! -d "$PREFIX" ]; then printf 'Run this script inside Termux.\n'; exit 1; fi
R='\033[1;31m'; G='\033[1;32m'; Y='\033[1;33m'; B='\033[1;34m'; M='\033[1;35m'; C='\033[1;36m'; W='\033[1;37m'; D='\033[2;37m'; N='\033[0m'
FAST="\${GITHUBSETUP_SPEED:-normal}"
pause() { [ "$FAST" = fast ] || sleep "\${1:-0.12}"; }
line() { printf '%b%s%b\n' "$1" "$2" "$N"; }
title() { clear; printf '%b\n\n' "$1"; printf '%b  %s%b\n\n' "$C" "$2" "$N"; printf '%b  LOCAL TERMINAL VISUAL • SIMULATION ONLY%b\n\n' "$D" "$N"; }
logs() { local item; for item in "Loading visual interface" "Preparing terminal theme" "Checking local shell" "Starting display sequence"; do printf '%b[•]%b %s' "$D" "$N" "$item"; pause 0.12; printf ' %b[ OK ]%b\n' "$G" "$N"; pause 0.08; done; }
matrix() { local i j; for i in 1 2 3; do for j in $(seq 1 56); do printf '%b%s%b' "$G" "$((RANDOM%2))" "$N"; done; printf '\n'; pause 0.06; done; }
glitch() { local msg="$1" i; for i in 1 2 3; do printf '\r%b%s%b   ' "$M" "$msg" "$N"; pause 0.04; printf '\r%b%s%b   ' "$C" "$msg" "$N"; pause 0.04; done; printf '\r%b%s%b\n' "$R" "$msg" "$N"; }
show_art() {
case "$1" in
1) title "$G" "MATRIX RAIN"; matrix; line "$G" "0101  SYSTEM READY  1010" ;;
2) title "$B" "KALI-INSPIRED BLUE CONSOLE"; line "$B" "  /\\_/\\\\      TERMUX CONSOLE"; line "$C" " ( o.o )     BLUE TEAM INTERFACE"; line "$B" "  > ^ <      READY" ;;
3) title "$R" "DARK SKULL"; cat <<'EOF'
          .-=========-.
          \\'-=======-'/
          _|   ☠   |_
         ((|  o o  |))
          \|   ^   |/
           \_______/
EOF
;;
4) title "$C" "CYBERPUNK NEON"; line "$M" "  ▓▒░  C Y B E R  N E O N  ░▒▓"; line "$C" "  >>> TERMINAL ONLINE <<<" ;;
5) title "$G" "GREEN MATRIX"; matrix; line "$G" "  WAKE UP • LOCAL SESSION READY" ;;
6) title "$M" "PURPLE PHANTOM"; line "$M" "  ╔══════════════════════════════╗"; line "$M" "  ║       PHANTOM SHELL          ║"; line "$M" "  ╚══════════════════════════════╝" ;;
7) title "$Y" "GOLDEN TERMINAL"; line "$Y" "       ★  GOLD EDITION  ★"; line "$W" "  Premium shell experience" ;;
8) title "$C" "ICE STORM"; line "$C" "  ❄  ❄  ❄  FROZEN CONSOLE  ❄  ❄  ❄"; line "$W" "  COOL • CLEAN • READY" ;;
9) title "$R" "CRIMSON ALERT"; glitch "INITIALIZING RED INTERFACE"; line "$R" "  STATUS: VISUAL DEMO READY" ;;
10) title "$G" "FOREST TERMINAL"; line "$G" "       /\\      /\\ "; line "$G" "      //\\\\    //\\\\"; line "$G" "     ///\\\\\\  ///\\\\\\"; line "$Y" "        ||  ||" ;;
11) title "$B" "OCEAN DEPTH"; line "$B" "  ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"; line "$C" "    DEEP BLUE CONSOLE"; line "$B" "  ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~" ;;
12) title "$M" "GALAXY ORBIT"; line "$M" "       .     *       ."; line "$C" "    *      ( TERMUX )     *"; line "$M" "       .      *      ." ;;
13) title "$Y" "RETRO 1980"; line "$Y" "  +--------------------------+"; line "$G" "  |  RETRO COMPUTER SYSTEM   |"; line "$Y" "  +--------------------------+" ;;
14) title "$W" "MINIMAL WHITE"; line "$W" "  TERMUX / SHELL"; line "$D" "  ──────────────────────────"; line "$W" "  A clean terminal starts here." ;;
15) title "$M" "SAKURA PINK"; line "$M" "  . * . 🌸 . * . 🌸 . * ."; line "$W" "      SAKURA TERMINAL"; line "$M" "  . * . 🌸 . * . 🌸 . * ." ;;
16) title "$G" "EMERALD CORE"; line "$G" "  ╭──────────────────────────╮"; line "$G" "  │       EMERALD CORE       │"; line "$G" "  ╰──────────────────────────╯" ;;
17) title "$C" "HOLOGRAM HUD"; line "$C" "  [ CPU: LOCAL ] [ SHELL: OK ]"; line "$B" "  ┌──────────────────────────┐"; line "$C" "  └──────────────────────────┘" ;;
18) title "$R" "DRAGON FIRE"; line "$R" "          /\\ "; line "$Y" "     ____/  \\____"; line "$R" "    /  DRAGON UI  \\"; line "$Y" "    \\____________/" ;;
19) title "$B" "TACTICAL GRID"; line "$B" "  +----+----+----+----+"; line "$C" "  | 01 | 10 | 01 | 11 |"; line "$B" "  +----+----+----+----+" ;;
20) title "$G" "CYBER KING STYLE"; glitch "WELCOME TO YOUR TERMINAL"; line "$Y" "  ★ CYBER STYLE • LOCAL DEMO ★"; line "$G" "  YOUR DEVICE • YOUR LOOK" ;;
esac
printf '\n'; logs; printf '\n%b✔ Display sequence complete. No real system access was performed.%b\n\n' "$G" "$N"
}
names=("Matrix Rain" "Kali-inspired Blue" "Dark Skull" "Cyberpunk Neon" "Green Matrix" "Purple Phantom" "Golden Terminal" "Ice Storm" "Crimson Alert" "Forest Terminal" "Ocean Depth" "Galaxy Orbit" "Retro 1980" "Minimal White" "Sakura Pink" "Emerald Core" "Hologram HUD" "Dragon Fire" "Tactical Grid" "Cyber King Style")
printf '\n%b╔══════════════════════════════════════════════╗%b\n' "$C" "$N"
printf '%b║       GITHUBSETUP • BOOT SCREEN STUDIO       ║%b\n' "$C" "$N"
printf '%b╚══════════════════════════════════════════════╝%b\n\n' "$C" "$N"
for i in "\${!names[@]}"; do printf '  %2d) %s\n' "$((i+1))" "\${names[$i]}"; done
printf '\n  q) Exit\n\nChoose a design [1-20]: '
IFS= read -r choice || exit 0
case "$choice" in q|Q) exit 0 ;; ''|*[!0-9]*) printf 'Invalid choice.\n'; exit 1 ;; esac
if [ "$choice" -lt 1 ] || [ "$choice" -gt 20 ]; then printf 'Choose a number from 1 to 20.\n'; exit 1; fi
show_art "$choice"
