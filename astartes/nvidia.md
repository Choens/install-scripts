# NVidia

NVidia does not make life easy for penguin fans. This is only needed on systems with an NVIDIA card.

It requires the nvidia kernel module for new kernels. I rarely use the nvidia driver. I usually blacklist the nouveau driver and use the built-in Intel video card.

That said, you've got yourself two options:

1. Use it.
2. Disable it.
3. Use on demand. This is 

# Use it

```bash
sudo dnf install kmod-nvidia
```

# Disable it

If on a laptop, you should probably disable the Nvidia card to save the the 
battery.

```
sudo echo "blacklist nouveau" >> /etc/modprobe.d/nouveau.conf
```

# Use on demand

I've never actually had any success with this. It looks like PopOS may be your best bet if that is what you want to do, in which case, you don't need these instructions sense you can install the drivers by simply using the correct ISO. Eventually, this will be the best option by far.

