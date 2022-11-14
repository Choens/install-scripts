# About

RStudio Connect is a proprietary product.

Based on instructions from [here](https://docs.rstudio.com/rsc/installation/).

I am using the standard installation. To do use this installer, you need to have
access to a sudo user.

```bash
# Dependencies:
sudo dnf install libev-devel rrdtool

## Get the RPM & install it.
wget https://cdn.rstudio.com/connect/2022.07/rstudio-connect-2022.07.0.el8.x86_64.rpm
sudo rpm -i rstudio-connect-2022.07.0.el8.x86_64.rpm 
sudo -E bash ./rsc-installer.sh 2022.07.0
```

/etc/rstudio-connect


HEY . . .this is working on fedora!!!

Port 3939

https://docs.rstudio.com/connect/1.6.6/admin/authentication.html