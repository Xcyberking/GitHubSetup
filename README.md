# GitHubSetup — 20 Termux Designs

Give your Android Termux terminal a clean, professional look. Choose from **20 ready-made themes** with matching terminal colors, welcome banners, and command prompts.

## Features

- 20 selectable designs — neon, cyber, ocean, forest, sunset, monochrome and more.
- Interactive numbered menu with a preview of each theme.
- Matching Termux background, foreground, cursor and 16 terminal colors.
- Custom welcome banner and readable shell prompt.
- Safe setup: backs up existing Termux color settings and adds one marked startup line instead of replacing your whole `.bashrc`.
- Re-run anytime to switch designs.
- Restore option to remove the custom prompt and restore the saved colors.
- No root required; no hacking tools or unnecessary packages installed.

## Requirements

- Android with Termux installed.
- Recommended: current Termux from F-Droid or the official Termux GitHub releases.
- Run the commands inside Termux, not in a computer terminal.

## Install

```bash
pkg update -y
pkg install git -y
git clone https://github.com/Xcyberking/GitHubSetup.git
cd GitHubSetup
bash setup.sh
```

Or run the script directly:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/Xcyberking/GitHubSetup/main/setup.sh)
```

## The 20 designs

1. Cyber Blue
2. Neon Green
3. Purple Haze
4. Crimson Red
5. Arctic White
6. Ocean Deep
7. Matrix Lime
8. Sunset Glow
9. Royal Gold
10. Midnight Rose
11. Dracula Violet
12. Forest Green
13. Solar Orange
14. Ice Cyan
15. Graphite
16. Sakura Pink
17. Galaxy
18. Emerald
19. Amber Terminal
20. Minimal Dark

Choose a number from the menu. The script applies the theme and tells you to restart Termux or open a new session if the terminal colors do not refresh immediately.

## Restore

Run the setup script again and choose **Restore original settings**. The script removes only its own marked startup entry and restores the color backup when one exists.

## Safety and notes

- Review scripts before running them.
- The script changes only Termux user configuration under your home directory.
- It does not request root, collect data, change Android settings, or install security tools.
- Termux color settings may require reopening the app to refresh.

## License

MIT
