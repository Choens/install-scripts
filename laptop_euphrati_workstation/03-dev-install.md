# About

- I try to keep my base system as minimal as possible.



# Containers

This is a WIP. I am trying to figure out how to use Podman to build and serve VSCode devcontainers.

```bash
# DO NOT RUN AS ROOT!!!
systemctl --user enable  --now podman.socket
systemctl --user status podman.socket
```

## Container: r-geospatial

- TODO: Link to repo
- Follow directions in the README


# Python

I have almost completely moved my direct development to containers. BUT, I do still like to be able program in Python more directly.

```bash
sudo dnf install -y conda pipx
```

