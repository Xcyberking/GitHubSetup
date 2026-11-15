#!/data/data/com.termux/files/usr/bin/bash
# GitHubSetup — 20 safe Termux appearance themes
set -u

APP_NAME="GitHubSetup"
CONFIG_DIR="$HOME/.config/githubsetup"
THEME_FILE="$CONFIG_DIR/theme.sh"
TERMUX_DIR="$HOME/.termux"
COLOR_FILE="$TERMUX_DIR/colors.properties"
BASHRC="$HOME/.bashrc"
MARKER="# >>> GitHubSetup theme loader >>>"
END_MARKER="# <<< GitHubSetup theme loader <<<"

if [ ! -d "$PREFIX" ] || [ -z "${PREFIX:-}" ]; then
  printf 'Please run this script inside Termux.\n'
  exit 1
fi

mkdir -p "$CONFIG_DIR" "$TERMUX_DIR"

names=(
  "Cyber Blue" "Neon Green" "Purple Haze" "Crimson Red" "Arctic White"
  "Ocean Deep" "Matrix Lime" "Sunset Glow" "Royal Gold" "Midnight Rose"
  "Dracula Violet" "Forest Green" "Solar Orange" "Ice Cyan" "Graphite"
  "Sakura Pink" "Galaxy" "Emerald" "Amber Terminal" "Minimal Dark"
)

# Each row: background foreground cursor color0 color1 color2 color3 color4 color5 color6 color7
palettes=(
  "#071426 #DCEBFF #39A7FF #101B2D #F05B67 #55D68B #F2C14E #398BFF #B18CFF #39D6D0 #DCEBFF"
  "#06150C #D7FFE2 #57FF83 #102719 #FF6262 #63E68B #F4DB65 #31B66A #5AA6FF #D56BFF #D7FFE2"
  "#160C25 #F0E2FF #C78BFF #29133E #FF6D91 #7EDBAA #F7D36B #A66BFF #65A8FF #FF8BCE #F0E2FF"
  "#21090D #FFE5E8 #FF647C #351018 #FF647C #74D69B #F4D36B #E5485D #A77BFF #67C9FF #FFE5E8"
  "#101820 #F4F8FF #FFFFFF #293642 #E45B65 #46B982 #E6B94F #5D9FEA #A58BEA #55C9C7 #F4F8FF"
  "#061B2B #DDF6FF #4DD9FF #102D43 #FF7185 #53D69B #F3D06A #258CCB #A78BFA #42D6D0 #DDF6FF"
  "#071407 #D9FFD1 #8BFF42 #172B12 #FF5F56 #91E85C #E8E36A #55B83B #7BC8FF #D98BFF #D9FFD1"
  "#24100C #FFF0DE #FF9A55 #3B1D13 #F45F65 #79C77A #FFD166 #F47B45 #A98BFF #57C9D8 #FFF0DE"
  "#1D1707 #FFF4CE #FFD45E #352B10 #E96B62 #83C77B #F8D66D #D9A52E #7DAAFF #D58BFF #FFF4CE"
  "#1D0D19 #FFE5F3 #FF80C8 #35162C #FF6B80 #7CD6A0 #F1D36B #E65C9B #9B8BFF #64C9E8 #FFE5F3"
  "#171321 #F3EFFF #BD93F9 #282436 #FF5555 #50FA7B #F1FA8C #BD93F9 #8BE9FD #FF79C6 #F8F8F2"
  "#0C1B12 #E0F5E7 #76C893 #193322 #E56B6F #76C893 #E9D477 #4D9C6C #7CA9E8 #C49BE8 #E0F5E7"
  "#211207 #FFF0DD #FF9F43 #392313 #F15B5B #8BD17C #FFD166 #E98532 #6EA8FF #C28BFF #FFF0DD"
  "#071C24 #E1FAFF #65E5FF #12333D #FF7185 #6ED6A4 #E8D36B #3BA9C7 #9B8BFF #5DE0D0 #E1FAFF"
  "#111418 #E1E5EA #AAB4C0 #252B33 #E06C75 #98C379 #E5C07B #61AFEF #C678DD #56B6C2 #E1E5EA"
  "#210F1B #FFE8F2 #FF9BCB #3A1C2D #FF6B8A #83D6A2 #F5D36A #E77BAC #9D8BFF #63CDE0 #FFE8F2"
  "#100D25 #E9E5FF #A99BFF #211B3D #FF6C8A #78D69A #F2D16B #8173E8 #62B5FF #D28BFF #E9E5FF"
  "#071B17 #DFFFF5 #54E0B5 #12332A #F06A76 #54D6A4 #E8D36B #2DAF8B #69AFFF #B18BFF #DFFFF5"
  "#201707 #FFF0C7 #FFC857 #382B13 #E96B63 #86C879 #F3D06A #D69E32 #7CA8F2 #C58BFF #FFF0C7"
  "#101010 #E8E8E8 #FFFFFF #252525 #D95F5F #83B879 #D6B86A #7C9BCB #A58BCB #65B6B2 #E8E8E8"
)


style_names=("Cyber Frame" "Matrix Flow" "Purple Double Line" "Crimson Arrow" "Clean Minimal" "Ocean Wave" "Hacker Bracket" "Sunset Path" "Royal Crown" "Pink Neon" "Dracula Classic" "Forest Branch" "Solar Powerline" "Ice Block" "Mono Compact" "Sakura Heart" "Galaxy Orbit" "Emerald Box" "Amber Retro" "Simple Pro")
prompts=(
'\\[\\e[1;36m\\]╭─[\\[\\e[1;32m\\]\\u@\\h\\[\\e[1;36m\\]]─[\\[\\e[1;34m\\]\\w\\[\\e[1;36m\\]]\\n╰─➤ \\[\\e[0m\\]'
'\\[\\e[1;32m\\]┏━[\\u]━[\\w]\\n┗━━▶ \\[\\e[0m\\]'
'\\[\\e[1;35m\\]╔══[\\u@\\h]══\\n╚═[\\w]» \\[\\e[0m\\]'
'\\[\\e[1;31m\\]\\u\\[\\e[1;33m\\] ➜ \\[\\e[1;31m\\]\\w\\[\\e[0m\\] ❯ '
'\\[\\e[1;37m\\]\\w \\[\\e[1;36m\\]$ \\[\\e[0m\\]'
'\\[\\e[1;36m\\]~(\\u) [\\w]\\n\\[\\e[1;34m\\]wave ❯ \\[\\e[0m\\]'
'\\[\\e[1;32m\\][\\u@termux]\\[\\e[1;36m\\] {\\w}\\n\\[\\e[1;32m\\]rootless# \\[\\e[0m\\]'
'\\[\\e[1;33m\\]☀ \\u \\[\\e[1;31m\\]@ \\[\\e[1;33m\\]\\w\\n\\[\\e[1;31m\\]➜ \\[\\e[0m\\]'
'\\[\\e[1;33m\\]♛ \\u@\\h \\[\\e[1;37m\\]\\w\\n\\[\\e[1;33m\\]❯ \\[\\e[0m\\]'
'\\[\\e[1;35m\\]♡ \\u \\[\\e[1;36m\\]~/\\w\\n\\[\\e[1;35m\\]➜ \\[\\e[0m\\]'
'\\[\\e[1;35m\\]┌─[\\u@\\h]\\n└─[\\w] λ \\[\\e[0m\\]'
'\\[\\e[1;32m\\]🌿 \\u \\[\\e[1;37m\\]\\w\\n\\[\\e[1;32m\\]❯ \\[\\e[0m\\]'
'\\[\\e[1;33m\\]⚡ \\u@\\h : \\w\\n\\[\\e[1;31m\\]➜ \\[\\e[0m\\]'
'\\[\\e[1;36m\\]▌\\u ▸ \\w\\n▌➜ \\[\\e[0m\\]'
'\\[\\e[1;37m\\]\\u:\\w $ \\[\\e[0m\\]'
'\\[\\e[1;35m\\]🌸 \\u \\[\\e[1;37m\\]\\w\\n\\[\\e[1;35m\\]❯ \\[\\e[0m\\]'
'\\[\\e[1;34m\\]◎ \\u@\\h \\[\\e[1;35m\\]\\w\\n\\[\\e[1;34m\\]orbit » \\[\\e[0m\\]'
'\\[\\e[1;32m\\]╭─[\\u]─[\\w]\\n╰─➤ \\[\\e[0m\\]'
'\\[\\e[1;33m\\]\\u@\\h\\[\\e[1;31m\\] ~> \\[\\e[1;33m\\]\\w\\n\\[\\e[1;33m\\]$ \\[\\e[0m\\]'
'\\[\\e[1;36m\\][\\u] \\[\\e[1;37m\\]\\w\\[\\e[1;36m\\] » \\[\\e[0m\\]'
)

print_menu() {
  printf '\n\033[1;36m╔══════════════════════════════════════════════╗\033[0m\n'
  printf '\033[1;36m║       GITHUBSETUP • TERMUX DESIGN STUDIO      ║\033[0m\n'
  printf '\033[1;36m╚══════════════════════════════════════════════╝\033[0m\n'
  printf '\nChoose your terminal look:\n\n'
  for i in "${!names[@]}"; do
    printf '  \033[1;36m%2d)\033[0m %s\n' "$((i+1))" "${names[$i]}"
  done
  printf '\n  0) Restore original settings\n'
  printf '  q) Exit\n\n'
}

write_theme() {
  local idx="$1"
  local row="${palettes[$idx]}"
  read -r bg fg cursor c0 c1 c2 c3 c4 c5 c6 c7 <<< "$row"

  # Preserve the original Termux palette once, before the first change.
  if [ ! -f "$CONFIG_DIR/colors.properties.backup" ] && [ -f "$COLOR_FILE" ]; then
    cp "$COLOR_FILE" "$CONFIG_DIR/colors.properties.backup"
  fi

  cat > "$COLOR_FILE" <<EOF
# Generated by GitHubSetup — ${names[$idx]}
background=$bg
foreground=$fg
cursor=$cursor
color0=$c0
color1=$c1
color2=$c2
color3=$c3
color4=$c4
color5=$c5
color6=$c6
color7=$c7
color8=$bg
color9=$c1
color10=$c2
color11=$c3
color12=$c4
color13=$c5
color14=$c6
color15=$fg
EOF

  {
    printf '# Generated by GitHubSetup — %s (%s)\\n' "${names[$idx]}" "${style_names[$idx]}"
    printf 'if [ -t 1 ]; then\\n'
    printf '  printf "\\n\\\\033[1;36m╭────────────────────────────────────────────╮\\n"\\n'
    printf '  printf "│  %s • %s\\\\033[1;36m                 │\\n"\\n' "${names[$idx]}" "${style_names[$idx]}"
    printf '  printf "│  Your Termux. Your style. Your workflow.   │\\n"\\n'
    printf '  printf "╰────────────────────────────────────────────╯\\\\033[0m\\n"\\n'
    printf 'fi\\n'
    printf "PS1='%s'\\n" "${prompts[$idx]}"
  } > "$THEME_FILE"

  if ! grep -Fq "$MARKER" "$BASHRC" 2>/dev/null; then
    {
      printf '\n%s\n' "$MARKER"
      printf '[ -f "$HOME/.config/githubsetup/theme.sh" ] && . "$HOME/.config/githubsetup/theme.sh"\n'
      printf '%s\n' "$END_MARKER"
    } >> "$BASHRC"
  fi

  printf '\n\033[1;32m✓ Applied: %s\033[0m\n' "${names[$idx]}"
  printf 'Open a new Termux session (or run: source ~/.bashrc) to see the banner and prompt.\n'
  printf 'If terminal colors do not refresh, close and reopen Termux.\n'
}

restore_theme() {
  if [ -f "$CONFIG_DIR/colors.properties.backup" ]; then
    cp "$CONFIG_DIR/colors.properties.backup" "$COLOR_FILE"
    printf '✓ Original Termux color settings restored.\n'
  else
    rm -f "$COLOR_FILE"
    printf '✓ Removed the GitHubSetup color palette. Termux defaults will be used.\n'
  fi

  if [ -f "$BASHRC" ]; then
    tmp="$BASHRC.githubsetup.tmp"
    awk -v start="$MARKER" -v end="$END_MARKER" '
      $0 == start { skip=1; next }
      $0 == end { skip=0; next }
      !skip { print }
    ' "$BASHRC" > "$tmp" && mv "$tmp" "$BASHRC"
  fi
  rm -f "$THEME_FILE"
  printf '✓ GitHubSetup prompt loader removed. Restart Termux to finish restoring.\n'
}

while true; do
  print_menu
  printf 'Enter choice [0-20/q]: '
  IFS= read -r choice || exit 0
  case "$choice" in
    q|Q) printf 'Bye!\n'; exit 0 ;;
    0) restore_theme; exit 0 ;;
    ''|*[!0-9]*) printf 'Please enter a number from 0 to 20, or q.\n'; sleep 1 ;;
    *)
      if [ "$choice" -ge 1 ] && [ "$choice" -le 20 ]; then
        write_theme "$((choice-1))"
        exit 0
      else
        printf 'Please choose a number from 0 to 20.\n'
        sleep 1
      fi
      ;;
  esac
done
