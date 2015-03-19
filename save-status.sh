#! /bin/bash
# ##############################################################################
# System Status
#
# Useful script to save the system status informate AND add it to the git repo
# so I can track changes in a system over time.
#
# ##############################################################################

# TODO - This is really just a shell of an idea here. Nothing actually works.
mkdir ~/config/$(cat /etc/hostname)-Date
cd to the above

dpkg --get-selections > packages-installed.txt

cat /proc/bus/input/devices > devices.txt

git add  . . .

cat os-release 
