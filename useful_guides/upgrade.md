# Upgrade

This works across servers, laptops, workstations, etc.

```bash
sudo dnf upgrade --refresh
sudo dnf autoremove
sudo dnf install dnf-plugin-system-upgrade -y
sudo dnf system-upgrade download --releasever=41
sudo dnf system-upgrade reboot
```

```bash
sudo dnf system-upgrade download --releasever=41 --allowerasing
```

And if that fails

```bash
sudo dnf distro-sync
```

And when all is said and done, running a SELinux reset wouldn't hurt for those of us who muck with everything.

```bash
sudo fixfiles -B onboot
```
