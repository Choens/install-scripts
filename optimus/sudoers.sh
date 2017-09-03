# https://fedoraproject.org/wiki/Configuring_Sudo
# Fedora users should use a regular user account for regular day to day activities and a root account only for system administration. Use the personal account you created following the installation process, at first boot, for daily use. Use the root account only for administration of your system.

# To run as root use the su or sudo commands. Avoid using root for any non-administration usage, since the root account makes it easy to create security or data risks. If you frequently use a single user desktop, you may find it convenient to configure sudo so you can use the same password to access root as you use for your regular account. To do this, select to be added to the Administration group during installation. To do it later, or to add a different user, follow this procedure:

# 1. Become the root user using the su command. Enter the password for the root account when prompted.
su

# 2. Run this command, using your user account name in the place of "sampleusername":
usermod sampleusername -a -G wheel

# You must now log off and back on in order to have access to the wheel group. Note that when sudo prompts you for a password, it expects your user password, not root's.

