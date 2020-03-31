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

# Additional packages you will need to compile Atom packages.
sudo dnf install \
     curl.x86_64 \
     cyrus-sasl.x86_64 cyrus-sasl-devel.x86_64 \
     gdal.x86_64 gdal-devel.x86_64 \
     geos.x86_64 geos-devel.x86_64 \
     libcurl.x86_64 libcurl-devel.x86_64 \
     libicu-devel.x86_64 \
     libjpeg-turbo.x86_64 libjpeg-turbo-devel.x86_64 \
     libxml2.x86_64 libxml2-devel.x86_64  \
     openssl-libs.x86_64 openssl-devel.x86_64 \
     proj-devel.x86_64 \
     proj-epsg.x86_64 \
     proj-nad.x86_64 \
     udunits2.x86_64 udunits2-devel.x86_64



# ==============================================================================
# Emacs
# This was the first editor I loved.
# I've added zeromq here so I can better use Jupyter and I need libtool in
# order to compile some of the stuff Emacs is gonna need.
# ==============================================================================
sudo dnf install -y \
     adobe-source-code-pro-fonts \
     emacs-auctex emacs-auctex-doc \
     emacs-auto-complete \
     emacs-ess emacs-ess-doc\
     emacs-goodies \
     emacs-magit \
     emacs-slime-el \
     emacs-yaml-mode \
     emacs \
     libtool \
     zeromq zeromq-devel

emacs-blacken.noarch
migemo-emacs.noarch
emacs-filesystem.noarch
emacs-color-theme.noarch
emacs-ledger-el.noarch
emacs-terminal.noarch
emacs-epix.noarch
emacs-riece.noarch
emacs-auto-complete.noarch
mg.x86_64
zile.x86_64
vile.x86_64
xvile.x86_64
jove.x86_64
python3-elpy.noarch






# ==============================================================================
# Vim
# Not sure how I feel about this.
# ============================================================================== 
sudo dnf install neovim python3-neovim


# ==============================================================================
# Visual Studio Code
# A surprsingly capable editor.
#
# WARNING: THIS MAY NOT BE NECESSARY ANY LONGER!!!!!
#
# https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
# ==============================================================================
#sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
#sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > #/etc/yum.repos.d/vscode.repo'
#dnf check-update
#sudo dnf install code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install -y code



# ==============================================================================
# Other
# ==============================================================================
sudo dnf install -y meld

