# About

- Server Desktop applications I usually install.
- Where possible, I install flatpaks. However, some apps work better when installed via rpm.
- All installed flatpaks are from Flathub.



# Dark Theme

I like my themes dark, like me:

```bash
flatpak install -y org.gtk.Gtk3theme.Adwaita-dark
```

If you install Flatpak apps while in light mode and then later try to move to dark, it doesn't work. Sigh.



# Audio & Video

- KDenlive: Video editor

```bash
flatpak install flathub --assumeyes  \
    org.kde.kdenlive
```



# Development & Data Science Tools

## DNF

### Neovim

```bash
sudo dnf install --setopt=install_weak_deps=False -y \
    neovim neovim-qt\
    python3-neovim
```

### Other Tools

```bash
sudo dnf install -y conda mycli nodejs pgcli pipx postgresql

conda init --user --all
conda config --set auto_activate_base false
#conda create -n navigator
#conda activate navigator
#conda install anaconda-navigator menuinst
#conda deactivate

# TODO: Decide here!
sudo dnf install pgadmin4-qt
```



# Education



# Games



# Graphics & Photography:



# Networking & Internet

- Remote Desktop Client:
  - KRDC: Connect with RDP or VNC to another computer.

  TODO: syncthing (dnf)

```bash
# Remote desktop client:
flatpak install flathub --assumeyes org.kde.krdc
```



# Office & Productivity



# System & Utilities

- Back in Time: Back up your things.
- KJournald: Browser for journald databases
- KTailctl: Manage and monitor Tailscale
- Sweeper: Clean unwanted traces the user leaves on the system
- Yakuake: Drop-down terminal


```bash
sudo dnf install backintime-qt kjournald sweeper

flatpak install flathub --assumeyes \
    org.fkoehler.KTailctl \
    org.kde.yakuake
```
