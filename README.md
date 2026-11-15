# GitHubSetup — 20 Termux Themes + 20 Prompt Styles + 20 Boot Screens

Give your Android Termux terminal a complete makeover. GitHubSetup combines **20 color palettes**, **20 matching prompt layouts**, and **20 cinematic startup/boot-screen designs**.

## Features

- 20 selectable terminal color themes.
- 20 matching prompt styles and custom welcome banners.
- 20 optional cinematic boot-screen designs: Matrix Rain, Kali-inspired Blue Console, Dark Skull, Cyberpunk Neon, Purple Phantom, Ice Storm, Galaxy Orbit, Retro 1980, Dragon Fire, Tactical Grid and more.
- Boot screens are visual-only simulations. They do not scan networks, access devices, change privileges, or perform intrusion actions.
- Backs up existing Termux colors before changing them.
- Adds one clearly marked loader to `.bashrc` without replacing the rest of the file.
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

Choose a number from 1–20 for a color theme and prompt style. Open a new Termux session or run `source ~/.bashrc` to see the new prompt.

## Run the 20 boot-screen designs

After cloning the repository:

```bash
bash boot-logos.sh
```

Choose any design from 1–20. To make the animation faster:

```bash
GITHUBSETUP_SPEED=fast bash boot-logos.sh
```

These are display effects only; all status messages are simulated.

## Restore original appearance

Run `bash setup.sh` again and choose `0) Restore original settings`.

## Safety notes

- Intended for Termux and changes only user-level appearance files.
- Does not require root, collect data, install hacking tools, or perform network actions.
- Review scripts before running them.

## License

MIT
