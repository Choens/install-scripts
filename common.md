# About

Contains tools/software which I commonly install on most of my systems.



# First Boot

Using whatever console/terminal/remote ssh:

```bash
sudo dnf upgrade
sudo dnf group upgrade --with-optional Multimedia
```

And then poke around a little. See if you see anything new.

```bash
dnf group list
```



# First Steps

It is nice to have these scripts locally. You _can_ copy/paste from a browser,
but a local copy is _nice_. This will help make that happen. Go ahead and set
yourself up with a RSA key, so you can push/pull from git. First, a couple of
dependencies.

```bash
sudo apt install git 

# You don't need this on a server or other system managed via ssh.
sudo dnf install xclip
```

Now, create a system-specific RSA key, and copy it to GitHub. I usually label
these based on the hostname of the system, so I can later disable access to
specific systems.

```bash
# Create a RSA key.
ssh-keygen -t rsa -b 4096 -C "andy.choens@gmail.com"
ssh-add ~/.ssh/id_rsa

# Again, maybe not via SSH . . . . 
xclip -sel clip < ~/.ssh/id_rsa.pub
```

Before creating a local copy of the installation scripts, set up my common
development structure. This helps me manage my different copies of myself and
makes sure my git commits are appropriate.

**.gitconfig:**
```
[includeIf "gitdir:dev/acphs/"]
  path = .gitconfig-acphs
[includeIf "gitdir:dev/acuitas/"]
  path = .gitconfig-acuitas 
[includeIf "gitdir:dev/andy/"]
  path = .gitconfig-andy
[includeIf "gitdir:.emacs.d/"]
  path = .gitconfig-emacs
[includeIf "gitdir:Notes/"]
  path = .gitconfig-notes
[init]
        defaultBranch = main
[credential]
        helper = cache
```

**.gitconfig-acphs:**
```
[user]
    name = Andy Choens
    email = andrew.choens@acphs.edu
```

**.gitconfig-acuitas:**
```
[user]
    name = Andy Choens
    email = andy.choens@acuitashealth.com
```

**.gitconfig-andy:**
```
[user]
    name = Andy Choens
    email = andy.choens@gmail.com
```
And now we can create a local copy of these scripts.

**.gitconfig-emacs:**
```
[user]
    name = Andy Choens
    email = andy.choens@gmail.com
```

Finally, create a local copy of the install scripts.

```bash
cd ~
mkdir dev/andy
cd dev/andy
git clone https://github.com/Choens/install-scripts.git
```

References:
- https://help.github.com/articles/connecting-to-github-with-ssh/




```bash

```
## CLI Applications

```bash
sudo dnf install \
    bpytop \
    hwinfo \
    htop \
    p7zip p7zip-plugins \
    pwgen \
    ranger
```

## Docker

Obviously, only useful where I'm going to be doing docker development.

TODO: Cleanup

```bash
sudo dnf install podman podman-docker podman-compose

## Maybe:
sudo dnf install docker-compose

## To use docker compose:
sudo systemctl enable podman.socket
sudo systemctl start podman.socket
sudo systemctl status podman.socket

## TEST -- You want to see  "OK"
sudo curl -H "Content-Type: application/json" --unix-socket /var/run/docker.sock http://localhost/_ping


## TODO: Learn more about this.
## To run docker successfully, SELinux needs to be disabled.
## To do so temporarily:
sudo setenforce 0 # Or 1 to re-enable.

# To do so permanently, edit /etc/selinux/config and:
# SELINUX=permissive 
# or
# SELINUX=disabled
#
# The default (Fedora 36) is:
# SELINUX=enforcing
```



# Flatpak

```bash
# If this works, skip the next part.
# Browse to: https://flatpak.org/setup/Fedora/ and download the Flathub
# repository file, or intsall it this way:
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```


# References

- https://dnf.readthedocs.io/en/latest/command_ref.html

