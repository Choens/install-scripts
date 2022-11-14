dmesg | grep rtw

[andy@fedora ~]$ dmesg | grep rtw
[   11.795308] rtw_8822ce 0000:01:00.0: enabling device (0000 -> 0003)
[   11.802346] rtw_8822ce 0000:01:00.0: Firmware version 9.9.13, H2C version 15
[   11.805369] rtw_8822ce 0000:01:00.0: Firmware version 9.9.4, H2C version 15
[   11.823736] rtw_8822ce 0000:01:00.0 wlo1: renamed from wlan0
[   28.655349] rtw_8822ce 0000:01:00.0: failed to get tx report from firmware
[  167.571750] rtw_8822ce 0000:01:00.0: failed to write TX skb to HCI
[  167.571756] rtw_8822ce 0000:01:00.0: failed to pusk skb, ret -28
[  168.568727] rtw_8822ce 0000:01:00.0: failed to write TX skb to HCI
[  168.568737] rtw_8822ce 0000:01:00.0: failed to pusk skb, ret -28
[  169.318690] rtw_8822ce 0000:01:00.0: failed to write TX skb to HCI
[  169.318700] rtw_8822ce 0000:01:00.0: failed to pusk skb, ret -28
[  169.318738] rtw_8822ce 0000:01:00.0: failed to write TX skb to HCI



rtw_8822ce


lsmod | grep 88



[andy@fedora ~]$ lspci | grep "Network controller"
01:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8822CE 802.11ac PCIe Wireless Network Adapter
[andy@fedora ~]$ 




sudo dnf install @development-tools kernel-headers 
sudo dnf install git openssl

git clone https://github.com/lwfinger/rtw88.git

cd rtw88
make
sudo make sign-install

