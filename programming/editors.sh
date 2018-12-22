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
# ==============================================================================
sudo dnf install \
     emacs-auctex emacs-auctex-doc \
     emacs-auto-complete \
     emacs-ess emacs-ess-doc\
     emacs-goodies \
     emacs-magit \
     emacs-slime-el \
     emacs-yaml-mode \
     emacs

# After installing emacs, clone emacs config: git@github.com:Choens/emacs.d.git
# into ~/.emacs.d. Then start Emacs and run the script lisp/package-config.el.
# Once that is done, update all packages from within Emacs. Finally - enjoy.

# KWin and Emacs like fight:
# https://userbase.kde.org/KWin_Rules_Application_Workarounds#Full-screen_Re-size_Error
# - In Window Management . . . . KWin Rules
# - Use Detect Window Properties and select the Emacs window. Match
#   only by primary class name so leave the check boxes unchecked.
# - Clicking OK in the previous window back-fills the results in the
#   Window Matching tab. Enter a meaningful text in the Description
#   text box.
# - Ignore Emacs's full-screen request by enabling the Obey geometry
#   restrictions attribute, toggling it to off (No) to ignore and
#   selecting the Force parameter:

# ==============================================================================
# Kate & other KDE
# It ain't glamorous, but it can be effective
# ==============================================================================
sudo dnf install kate kate-plugins kompare



# ==============================================================================
# Other
# Other useful bits
# ==============================================================================
sudo dnf install \
    umbrello \
    vim
    



# ==============================================================================
# Visual Studio Code
# A surprsingly capable editor.
# https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
# ==============================================================================
#sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
#sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > #/etc/yum.repos.d/vscode.repo'
#dnf check-update
#sudo dnf install code
