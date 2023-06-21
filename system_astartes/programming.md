# About

Tools useful for programming. Major languages such as python and R are handled
in language-specific files. 



# Build Tools/Libraries

```bash
sudo dnf group install "C Development Tools and Libraries"
sudo dnf install libtool
```



# Database

[programming-database](./programming-database.md)



# Virtualization

## Podman

Obviously, only useful where I'm going to be doing docker development.

TODO: Cleanup

```bash
sudo dnf install podman podman-docker podman-compose podman-tui

## Maybe:
sudo dnf install docker-compose

## To use docker compose:
sudo systemctl enable podman.socket
sudo systemctl start podman.socket
sudo systemctl status podman.socket

## TEST -- You want to see  "OK"
sudo curl -H "Content-Type: application/json" --unix-socket /var/run/docker.sock http://localhost/_ping


## TODO: Learn more about this.
## To run docker successfully, SELinux needs to be disabled.
## To do so temporarily:
sudo setenforce 0 # Or 1 to re-enable.

# To do so permanently, edit /etc/selinux/config and:
# SELINUX=permissive 
# or
# SELINUX=disabled
#
# The default (Fedora 36) is:
# SELINUX=enforcing
```

## Not sure how this works.

```bash
flatpak install io.podman_desktop.PodmanDesktop 
```

# Editors

This is a big one.

## Neovim

```bash
sudo dnf install \
    libtree-sitter.x86_64 \
    aspell.x86_64 aspell-en \
    hunspell.x86_64 hunspell-en-US hunspell-en \
    micro \
    neovim python3-neovim \
    ripgrep \
    the_silver_searcher
```

For full setup instructions, see:
- [Vim](./vim.md)

## VS Code

Useful info: [VS Code Setup Linux](https://code.visualstudio.com/docs/setup/linux)

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install code
```

## Emacs

I spent most of my life as an Emacs fan, so I can't bring myself to delete this, but in the end I moved on. It is a wonderful editor and my fingers will always remember my Emacs chord-combos fondly.

```bash
sudo dnf install emacs
```

My .emacs.d, which should install needed software automatically, is here: []()



# Git

```bash
sudo dnf install \
    git \
    git-credential-libsecret \
    git-crypt \
    git-tools \
    gitui \
    tig

flatpak install io.github.shiftey.Desktop
```


# Languages

## Nodejs

```bash
sudo dnf install nodejs.x86_64 npm.x86_64
```

## Python

See [programming-python](./programming-python.md)

## R

See [programming-r](programming-r.md)

# Other

- ARX: Data anonymization tool

```bash
flatpak install org.deidentifier.arx
```
