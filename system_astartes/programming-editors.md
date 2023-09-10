# About

Tools useful for editing text.



# CLI Tools/Fonts

```bash
sudo dnf install \
    libtree-sitter.x86_64 \
    aspell.x86_64 aspell-en \
    hunspell.x86_64 hunspell-en-US hunspell-en \
    ripgrep \
    the_silver_searcher

# I like nice fonts.
sudo dnf install \
     adobe-source-sans-pro-fonts \
     adobe-source-serif-pro-fonts \
     cascadia-code-fonts \
     fira-code-fonts \
     ibm-plex*
```



# Emacs

I spent most of my life as an Emacs fan, so I can't bring myself to delete this, but in the end I moved on. It is a wonderful editor and my fingers will always remember my Emacs chord-combos fondly.

```bash
sudo dnf install emacs
```

My .emacs.d, which should install needed software automatically, is here: []()




# Mico

```bash
sudo dnf install micro
```

# NeoVim

```bash
sudo dnf install \
    libtree-sitter.x86_64 \
    aspell.x86_64 aspell-en \
    hunspell.x86_64 hunspell-en-US hunspell-en \
    neovim python3-neovim \
    ripgrep \
    the_silver_searcher
```

For full setup instructions, see:
- [Vim](./vim.md)



# VS Code

Useful info:
-  [VS Code Setup Linux](https://code.visualstudio.com/docs/setup/linux)

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install code
```
