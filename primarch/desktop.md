# About

Install/setup for Fedora workstation setup while using it as a home server.

# First Boot

A few things I like to do to make my life a littler more comfortable.

Open `Settings`:

- Appearance: Dark
- Multitasking: Application Switching -> Include applications from the current workspace only.
- Accessibility: Make the mouse cursor bigger.
- Color: Calibrate screen
- Users: Set auto-login to TRUE.
    - Next time you login, you'll get a password error, enter your password, reset, and you'll never see this again.
- Sharing:
    - 

Open Software:
        - I assume I/you enabled third party repos when you installed Fedora.
        - Disable: Pycharm, google-chrome, RPM-Fusion NVIDIA/Steam
        - Doing so will make your system faster to update packages, install new things, etc.

Then run the following bash commands.

```bash
sudo dnf group upgrade --with-optional Multimedia
y

sudo dnf group install "Fedora Workstation"

sudo dnf install \
    NetworkManager-tui \
    bpytop \
    hwinfo \
    htop \
    p7zip p7zip-plugins \
    pwgen \
    ranger
```


