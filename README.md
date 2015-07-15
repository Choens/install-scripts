Installation and setup notes for Optimus, my laptop. It is a Microsoft
Surface Pro 3 (i7, 8 GB Ram, 256 GB SSD). People are gonna hate on the
folks in Redmond, but this is some really nice hardware. Does it run
Linux perfectly?

Hell No.

But I typed this README file on Emacs, which is running on a Fedora
Gnome session. It works well enough, and support will only improve
over time. This document is a work in progress. As I learn more about
my new hardware, I may adjust some of what I have said tonight.

Current installation instructions are for Ubuntu 15.04 and
Fedora 22. I've been using both. As I proceed, I am going to open
"bugs" against the repo, to track my ideas and progress in resolving
problems. Should be fun.

## Installation Comments

I followed these instructions from geek.com:
<a href="http://www.geek.com/microsoft/linux-users-rejoice-heres-ubuntu-on-the-surface-pro-3-1594864/">
Linux Users Rejoice Heres Ubuntu On The Surface Pro 3
</a>

Your mileage may vary, but it worked for me.

# Hardware Support

## Works Out Of The Box

Using the 3.19 kernel, the _basics_ work. I was able to type, connect
to my wireless network, and listen to some tunes. I STRONGLY recommend
using a USB hub when you install. Having an operational mouse was very
helpful and I am still seeing some people report that the Type Cover 3
is problematic, so having a backup keyboard is also probably a good
idea.

Kernel 3.19:

- Screen: Worked, had to tweak the scaling.
- Type Cover 3 Keyboard: It worked for me.
- Speakers: Fine
- Wireless: Fine, but I installed the Marvell firmware for bluetooth
  which also affects wireless.

The 4.x kernel is better. The
[shvr kernel](https://github.com/shvr/fedora-surface-pro-3-kernel) on
GitHub is much better.

Kernel 4.x(shvr):

- Screen: Worked
- Type Cover 3 Keyboard: It worked for me.
- Speakers: Fine
- Wireless: Works great.
- Bluetooth: Works
- Touch Screen: Works
- Surface Pen: It works, but I can't connect to it via bluetooth or
  use it to wake.
- Type Cover Trackpad: Works
- Webcam: Works
- Accelerometers: Not sure.
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
