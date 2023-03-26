# About

RStudio Server

# Install

```bash
sudo dnf install rstudio-server.x86_64

sudo rstudio-server verify-installation

sudo systemctl enable --now rstudio-server
sudo firewall-cmd --permanent --add-port=8787
```

https://support.rstudio.com/hc/en-us/articles/200552306-Getting-Started

https://support.rstudio.com/hc/en-us/articles/200552306-Getting-Started