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
sudo dnf install -y \
     adobe-source-code-pro-fonts \
     emacs-auctex emacs-auctex-doc \
     emacs-auto-complete \
     emacs-ess emacs-ess-doc\
     emacs-goodies \
     emacs-magit \
     python-ropemacs \
     emacs-slime-el \
     emacs-yaml-mode \
     emacs



# ==============================================================================
# Gedit
# It ain't glamorous, but it can be effective
# ==============================================================================
sudo dnf install -y gedit-plugin* gedit-latex*



# ==============================================================================
# Vim
# Because, you can't have too many editors.
# ==============================================================================
sudo dnf install -y vim



# ==============================================================================
# Visual Studio Code
# A surprsingly capable editor.
# https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
# ==============================================================================
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install -y code



# ==============================================================================
# Other
# ==============================================================================
sudo dnf install -y meld sequeler
