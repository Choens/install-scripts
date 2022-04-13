# Upgrade

```bash
sudo dnf upgrade --refresh
sudo dnf autoremove
sudo dnf install dnf-plugin-system-upgrade -y
sudo dnf system-upgrade download --releasever=36
sudo dnf system-upgrade reboot
```

IFF that last step fails, try this:

```bash
sudo dnf system-upgrade download --releasever=36 --allowerasing
```

And if that fails

```bash
sudo dnf distro-sync
```

And when all is said and done, running an SELinux reset wouldn't hurt for those of us who much with everything.

```bash
sudo fixfiles -B onboot
```


Things I had to remove from primarch:
R-DT                                 noarch 0.17-4.fc35         @fedora  4.4 M
 R-covr                               x86_64 3.5.1-4.fc35        @fedora  547 k
 R-crosstalk                          noarch 1.1.1-3.fc35        @fedora  2.6 M
 R-htmlwidgets  
 
 python3-PyDrive                      noarch 1.3.1-18.fc35       @fedora  171 k
 python3-aiohttp-cors                 noarch 0.7.0-14.fc35       @fedora  129 k
 python3-slip                         noarch 0.6.4-25.fc35       @fedora   60 k
 python3-slip-dbus                    noarch 0.6.4-25.fc35       @fedora   70 k
 python3-toml                         noarch 0.10.2-5.fc35       @fedora  100 k
 python3-typed_ast                    x86_64 1.4.3-4.fc35        @updates 646 k
 sqlite                               x86_64 3.36.0-3.fc35       @fedora  1.6 M
 
 texlive-texlive-docindex             noarch 9:svn54903-39.fc34  @updates   0  
 texlive-updmap-map                   noarch 9:svn56618-39.fc34  @updates  33 M

