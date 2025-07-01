# About

Instructions for anyone needing to set up v4l and zoom desktop sharing on
Wayland desktops other than Gnome.

This is a small installation.

## Setup RPM Fusion

- https://rpmfusion.org/Configuration

## Install the loopback device

- https://ask.fedoraproject.org/t/cant-install-v4l2loopback-for-droidcam/19695
- https://www.math.cmu.edu/~gautam/sj/blog/20220326-zoom-wayland.html

```bash
sudo dnf install v4l2loopback
sudo modprobe v4l2loopback
```

OK - now you should have that set up.

When you start OBS, you should now have the option to start a virtual camera!