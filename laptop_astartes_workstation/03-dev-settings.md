# About

Documents some configuration steps I take to manage things.



# Git

Create a system-specific RSA key, and copy it to GitHub. I usually label
these based on the hostname of the system, so I can later disable access to
specific systems.

References:
- https://help.github.com/articles/connecting-to-github-with-ssh/

```bash
# Create a RSA key.
ssh-keygen -t rsa -b 4096 -C "andy.choens@gmail.com"
ssh-add ~/.ssh/andy_personal_rsa


ssh-keygen -t rsa -b 4096 -C "andy.choens@gmail.com"
ssh-add ~/.ssh/andy_github_rsa

# Again, maybe not via SSH . . . . 
xclip -sel clip < ~/.ssh/id_rsa.pub
```

Before creating a local copy of the installation scripts, set up my common
Projectselopment structure. This helps me manage my different copies of myself and
makes sure my git commits are appropriate.

**.gitconfig:**
```bash
touch ~/.gitconfig
gnome-text-editor ~/.gitconfig
```

And copy/paste the following:
```
[includeIf "gitdir:Projects/acphs/"]
  path = .gitconfig-acphs
[includeIf "gitdir:Projects/andy/"]
  path = .gitconfig-andy
[includeIf "gitdir:.emacs.d/"]
  path = .gitconfig-emacs
[init]
        defaultBranch = main
[credential]
        helper = cache
```

**.gitconfig-acphs:**
```bash
touch ~/.gitconfig-acphs
gnome-text-editor ~/.gitconfig-acphs
```

And copy/paste the following:
```
[user]
    name = Andy Choens
    email = andrew.choens@acphs.edu
```

**.gitconfig-andy:**
```bash
touch ~/.gitconfig-andy
gnome-text-editor ~/.gitconfig-andy
```

And copy/paste the following:
```
[user]
    name = Andy Choens
    email = andy.choens@gmail.com
```
And now we can create a local copy of these scripts.

**.gitconfig-emacs:**
```bash
gnome-text-editor ~/.gitconfig-emacs
```

```
[user]
    name = Andy Choens
    email = andy.choens@gmail.com
```

Finally, create a local copy of the install scripts.

```bash
cd ~
mkdir Projects/andy
cd Projects/andy
git clone https://github.com/Choens/install-scripts.git
```

