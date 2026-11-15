# GitHubSetup — 20 Termux Color Themes + 20 Styles

Give your Android Termux terminal a complete makeover. GitHubSetup combines **20 color palettes with 20 matching prompt layouts** for 20 ready-to-use looks.

## Features

- 20 selectable color themes: Cyber Blue, Neon Green, Purple Haze, Crimson Red, Arctic White, Ocean Deep, Matrix Lime, Sunset Glow, Royal Gold, Midnight Rose, Dracula Violet, Forest Green, Solar Orange, Ice Cyan, Graphite, Sakura Pink, Galaxy, Emerald, Amber Terminal and Minimal Dark.
- 20 different terminal prompt styles: framed, double-line, minimal, arrow, bracket, wave, retro, powerline-inspired and more.
- Matching terminal background, foreground, cursor and ANSI palette.
- Custom welcome banner showing the selected theme and style.
- Interactive numbered menu with theme and style names.
- Backs up existing Termux colors before changing them.
- Adds one clearly marked loader to `.bashrc` without replacing the rest of the file.
- Re-run any time to choose another design.
- Restore option to remove the custom prompt and restore the saved colors.
- No root required and no unnecessary packages installed.

## Install

Run these commands inside Termux:

```bash
pkg update -y
pkg install git -y
git clone https://github.com/Xcyberking/GitHubSetup.git
cd GitHubSetup
bash setup.sh
```

Choose any number from 1–20. Each number applies its matching color palette, welcome banner and prompt style. Open a new Termux session or run `source ~/.bashrc` to see the new prompt. If colors do not refresh, close and reopen Termux.

## Restore original settings

Run `bash setup.sh` again and choose `0) Restore original settings`.

## Safety notes

- The script is intended to run inside Termux.
- It changes user-level Termux appearance files under `$HOME`.
- It does not require root, collect data, or install hacking tools.
- Review scripts before running them.

## License

MIT
