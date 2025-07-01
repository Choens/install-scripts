# RPM Fusion

Adds the RPM Fusion repositories.

- I added this after Fedora disabled VAAPI.
- RPM Fusion is probably not necessary and I usually skip it.
- I documented these steps for myself and others.
- Note:
    - Flathub applications include all the codecs you could ever need.
    - This only enables codecs, etc. for applications installed via dnf/rpm.
    - May contain some software that is not (yet) on FlatHub.

```bash
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

## Hardware Support

- Extra things to make your hardware work better.
- Don't install all of this. Only install the bits you need, for YOUR hardware.

**Intel:** For hardware accelerated graphics on newer Intel chips:

```bash
sudo dnf install intel-media-driver
```

**AMD:** For hardware acceleration on AMD:

```bash
sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld 
```

## NVIDIA

TODO

## kmods

This is only useful/relevant if you want to use OBS Studios Virtual Camera.

```bash
# If you want to use OBS . . . .
sudo dnf install kmod-v4l2loopback
```

## Multimedia

- Reference: https://rpmfusion.org/Howto/Multimedia

```bash
sudo dnf swap ffmpeg ffmpeg-free  --allowerasing
```
