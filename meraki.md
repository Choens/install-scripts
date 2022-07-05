# Meraki Cisco

Only relevant if you need to interact with a Meraki VPN. I used this setup while
at Acuitas. I'm only keeping it here in case it is useful again in the future.

```bash
## Neither of these will work with Meraki, so make sure they aren't there.
sudo dnf remove libreswan openswan

## Then, install all of this.
sudo dnf install \
    NetworkManager-l2tp\
    NetworkManager-strongswan.x86_64 \
    plasma-nm-l2tp.x86_64 plasma-nm-strongswan \
    strongswan
sudo systemctl stop xl2tpd
```

# References:

- [Configuring Meraki Client VPN on Linux Mint 19 ](https://stuffjasondoes.com/2018/08/16/configuring-meraki-client-vpn-on-linux-mint-19-network-manager/)
- https://bugzilla.redhat.com/show_bug.cgi?id=1807024
- https://bugzilla.redhat.com/show_bug.cgi?id=1807024
- https://stuffjasondoes.com/2018/08/16/configuring-meraki-client-vpn-on-linux-mint-19-network-manager/