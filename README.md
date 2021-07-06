# README:

Contains installation notes/scripts/etc. for my various laptops and 
workstations. I try to keep my systems consistent. Where there are differences,
I try to be consistent in how I identify them.

# First Steps

## Installaton
- Install Fedora:
    - Download ISO file, burn to a USB-drive, install.
- During installation, encrypt the HDD
- Reboot

## First Boot
- Setup Online Accounts
- Settings:
    - Mouse: Enable "Tap to Click"
    - Make the mouse cursor bigger.
    - Open Software, enable third party software repositories.
        - Activate the Google Chrome repo
        - Activate the NVIDIA Driver repo, if applicable
- If installing on a fresh system (and not a copy/clone), use `0 Init.sh` to
  get started.
- Otherwise, proceed to `1 CLI.sh`.

## Setup

Worth exploring:

```
dnf group list
dnf groupinfo "Development Tools"
```

Files are numbered in the order in which they should be applied.

- **00 Init.sh:** Installs git and copies installation repo to local PC
- **01 CLI.sh:** Basic CLI tools I install
- **02 Desktop.sh:** Desktop software
- **03 Development.sh**: Thhings needed to do development.
- **10 Setup.md:** Useful commands/settings I try to keep consistent.

Additional scripts which may be helpful:

# Workstations:

- *Personal* workstations are named after Autobots.
- *Professional* workstations are named after Decepticons, because work is 
sometimes evil.

## Optimus: 

Primary workstation.

- **Model:** Dell XPS 13 (P54G)
- Includes programming tools, data analysis tools, and photography
  tools.

## Sentinel:

Personal workstations.

## Megatron:

Acuitas Health owned laptop.

- **Model:** Dell XPS 15 (9560)
- Contains programming tools and data analysis tools.
