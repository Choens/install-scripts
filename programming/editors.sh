# ##############################################################################
# Editors
#
# Useful tools for editing text.
#
# Sections (Editors):
# - Atom
# - Emacs
# - Gedit
# - Visual Studio Code
# - Other
#
# ##############################################################################



# ==============================================================================
# Atom
# I really want to like Atom. But it feels immature compared to similar options
## such as VS Code, let along Emacs and Vim. 
# ==============================================================================
# Download RPM from: https://atom.io/
#dnf install lsb-core-noarch
#rpm --install ~/Downloads/atom.x86_64.rpm



# ==============================================================================
# Emacs
# This was the first editor I loved.
# ==============================================================================
sudo dnf install \
     emacs-auctex emacs-auctex-doc \
     emacs-auto-complete \
     emacs-ess emacs-ess-doc\
     emacs-goodies \
     emacs-magit \
     python-ropemacs \
     emacs-slime-el \
     emacs-yaml-mode \
     emacs.x86_64



# ==============================================================================
# Gedit
# It ain't glamorous, but it can be effective
# ==============================================================================
sudo dnf install gedit-plugin* gedit-latex*



# ==============================================================================
# Vim
# Because, you can't have too many editors.
# ==============================================================================
sudo dnf install \
	neovim \
	python3-neovim

npm install neovim



# ==============================================================================
# Visual Studio Code
# A surprsingly capable editor.
# https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
# ==============================================================================
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code



# ==============================================================================
# Other
# ==============================================================================
sudo dnf install meld
