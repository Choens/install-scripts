# ##############################################################################
# Eclipse
#
# Installation steps for Eclipse. If/when I install eclipse, this is how.
# Because it is so long, I've separated this from the other editors.
#
# Sections:
# - Base
# - DLTK
# - DTP
# - Python
# - Web
# - Installed Manually
#
# Uses sudo. Your user must be in the /etc/sudoers file.
#
# ##############################################################################

# Base ------------------------------------------------------------------------
sudo dnf install \
     eclipse \
     eclipse-anyedit \
     eclipse-color-theme \
     eclipse-dtp \
     eclipse-egit eclipse-egit-github eclipse-egit-mylyn \
     eclipse-manpage \
     eclipse-mpc \
     eclipse-mylyn-versions-git eclipse-mylyn-docs-wikitext eclipse-mylyn-tasks-web \
     eclipse-remote \
     eclipse-rse \
     eclipse-quickrex

# Used To Install ----------------------
# I used to install the tm-terminal, but lately I've been playing with
# the wicked shell.
#     eclipse-tm-terminal.noarch \
#     eclipse-tm-terminal-connectors.noarch \

# Clean Up -------------------------
# Remove this if it causes trouble:
sudo dnf remove eclipse-abrt.noarch
 
# DLTK ------------------------------------------------------------------------
sudo dnf install \
     eclipse-dltk.noarch \
     eclipse-dltk-sh.noarch

# DTP -------------------------------------------------------------------------
# Is this actively developed? I don't install it.
# sudo dnf install \
#      eclipse-dtp.noarch

# Python ---------------------------------------------------------------------
# Decided to install via Eclipse Marketplace
# sudo dnf install eclipse-pydev.x86_64 eclipse-pydev-mylyn.x86_64 

# Web --------------------------------------------------------------------------
sudo dnf install eclipse-webtools-sourceediting.noarch
#sudo dnf install eclipse-pdt.noarch

# Installed Manually -----------------------------------------------------------
# Packages installed via the Eclipse Marketplace.
# - DBeaver
# - Eclipse Zip Editor
# - Liclipse Text
# - PDF4Eclipse
# - StartExplorer
# - Statet
# - Wicked Shell
# - Mylyn WikiText
# - Yedit
