# GitHubSetup — 20 Termux Themes + 20 Prompt Styles + 40 Boot Screens

Give your Android Termux terminal a complete makeover with color themes, prompt layouts and a cinematic startup-screen gallery.

## Features

- 20 selectable terminal color themes.
- 20 matching prompt styles and welcome banners.
- 40 selectable boot-screen designs, including Matrix Rain, Kali-inspired Blue Console, Cyberpunk Neon, Pixel Art Mask, Full Block Skull, Phone Pixel Art, Dragon Fire, Space Station, Neon City and more.
- Includes the three pixel-art designs supplied for this update, recreated as terminal art.
- Animated text, simulated status messages and optional fast mode.
- Boot screens are visual-only simulations: no network scanning, device access, privilege changes or intrusion actions.
- Backs up existing Termux colors before changing them.
- Adds one marked loader to `.bashrc` without replacing the rest of the file.
- Restore option removes the custom prompt and restores saved colors.
- No root required.

## Install

Run inside Termux:

```bash
pkg update -y
pkg install git -y
git clone https://github.com/Xcyberking/GitHubSetup.git
cd GitHubSetup
bash setup.sh
```

Choose 1–20 for a color theme and prompt style. Open a new Termux session or run `source ~/.bashrc` to see the new prompt.

## Run the boot-screen gallery

```bash
cd GitHubSetup
git pull
bash boot-logos.sh
```

Choose any design from 1–40. For faster animations:

```bash
GITHUBSETUP_SPEED=fast bash boot-logos.sh
```

The boot-screen gallery is separate from the persistent color/prompt theme installer. It only displays visual effects in the current terminal session.

## Restore original appearance

Run `bash setup.sh` again and choose `0) Restore original settings`.

## Safety notes

- Intended for Termux; appearance changes are limited to user-level files.
- Does not require root, collect data, install hacking tools or perform network actions.
- Review scripts before running them.

## License

MIT
