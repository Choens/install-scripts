# About

While not exactly what I wound up doing,
[this](https://computingforgeeks.com/how-to-install-pgadmin-on-centos-fedora/)
was useful.

```bash
sudo dnf install pgadmin4-httpd.x86_64
sudo systemctl start httpd && sudo systemctl enable httpd

## I did this, but not sure it is necessary:
sudo setsebool -P httpd_can_network_connect 1 

sudo chown apache:apache /var/lib/pgadmin/pgadmin4.db
```

And now we need to set everything up.

```bash
cd /usr/lib/pgadmin4/
sudo python setup.py
sudp systemctl restart httpd

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https


sudo firewall-cmd --reload
```

Useful places:

- /usr/lib/pgadmin4
- /etc/httpd/conf.d
- https://www.pgadmin.org/docs/pgadmin4/development/server_deployment.html