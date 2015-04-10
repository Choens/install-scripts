Installation and setup notes for Optimus, my laptop. It is a Microsoft
Surface Pro 3 (i7, 8 GB Ram, 256 GB SSD). People are gonna hate on the
folks in Redmond, but this is some really nice hardware. Does it run
Linux perfectly?

Hell No.

But I typed this README file on Emacs, inside a Ubuntu session
running a beta version of Ubuntu. It works well enough, and support
will only improve over time. This document is a work in progress. As I
learn more about my new hardware, I may adjust some of what I have
said tonight.

Current installation instructions are for Ubuntu 15.04, Vivid using
the 3.19 kernel. As I proceed, I am going to open "bugs" against the
repo, to track my ideas and progress in resolving problems. Should be
fun. Please come back and check on my progress.

## Installation Comments

I followed these instructions from geek.com:
<a href="http://www.geek.com/microsoft/linux-users-rejoice-heres-ubuntu-on-the-surface-pro-3-1594864/">
Linux Users Rejoice Heres Ubuntu On The Surface Pro 3
</a>

Your mileage may vary, but it worked for me.

UEFI is annoying. This is the first time since 1999 I have been forced
to have a Windows partition on a Linux system. I prefer Linux, my
personal preference. When I buy a new computer, I have always wiped
Windows and used the entire harddrive for Linux, until I installed
Linux onto the Surface Pro 3.

After successfully installing Ubuntu, I was unable to boot from the
SSD. I assumed (incorrectly) that Ubuntu's installer would replace
the Windows UEFI partition with something functional. It did
not. Thus, I have a 64 GB Windows partition and a 209 MB Windows UEFI
partition in addition to my Linux partitions. Frustrating, but Windows
could be useful in the event of a future firmware update. I assume
this will only be available as a Windows update.

This is not intended as an anti-Windows screed. Most home and office
computer run Windows. It must not be that bad. I do intend to upgrade
Windows to version 10 when it comes out. Quite frankly, some of the
V10 stuff looks cool.

# Hardware Support

## Works Out Of The Box

Using the 3.19 kernel, the _basics_ work. I was able to type, connect
to my wireless network, and listen to some tunes. I STRONGLY recommend
using a USB hub when you install. Having an operational mouse was very
helpful and I am still seeing some people report that the Type Cover 3
is problematic, so having a backup keyboard is also probably a good
idea.

The 4.0 kernel promises to be better, especially with some useful
patches.

Kernel 3.19:

- Screen: Worked, had to tweak the scaling.
- Type Cover 3 Keyboard: It worked for me.
- Speakers: Fine
- Wireless: Fine, but I installed the Marvell firmware for bluetooth
  which also affects wireless.

## Some Configuration Required

- Bluetooth: Marvell firmware required.
- Touch Screen: Multitouch is a work in progress. Seems much better on
  the 4.0 kernel.

## Limited Functionality

- Surface Pen: It works, but I can't connect to it via bluetooth or
  use it to wake.
- Type Cover Trackpad: This is soooooo much better under 4.0.

## Does Not Work

- Webcam: Limited functionality under Linux 4.
- Accelerometers
- Orientation: There is a python script, but I haven't used it yet.

## Untested

- Microphone

# Software

The files that start with "installation-" are a series of installation
bash scripts (and one markdown comments file) I use to quickly
reinstall / re-configure my system. Unless you happen to use Ubuntu
and have similar tastes in software, these may or may not be useful to
you. But they are useful for me.

They should be "run" manually in the following order:

- install-desktop.sh
- install-programming.sh
- install-art.sh
- install-notes.md

Note: -programming and -art can be interchanged if desired and -notes
cna be done while everything else is running. I don't run these as a
script. I actually run each section of code manually and I tend to
tweak them a little every time I run them, but having it all set up
this way helps me remember what I have installed and what I will want
to install again in the future.

## Software Problems

- Systemd: Ubuntu's initial foray into systemd land did not go very
  well for me.
- Encrypted Swap - I don't have any swap. No idea why. I made a swap
  partition and it is there. I can see it.
- Ubuntu Clock:
- Ksystemlog: This is a bug in Vivid. I hope it is resolved soon.

