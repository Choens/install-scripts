# ##############################################################################
# Build Essentials
#
# Useful tools for building things.
#
# ##############################################################################

# ==============================================================================
# CLI
# ==============================================================================
sudo dnf install -y \
     automake \
     dos2unix \
     gcc gcc-c++.x86_64 \
     make \
     rpmdevtools \
     zsh

## This changes the user's default to the zsh shell.
## Note - the first time you run zsh you will have to answer a bunch of questions.
chsh -s /usr/bin/zsh

## Loads zcalc
autoload -Uz zcalc

## Installs Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"




# ==============================================================================
# Desktop
# ==============================================================================
sudo dnf install -y \
     dconf-editor \
     tilix tilix-nautilus

