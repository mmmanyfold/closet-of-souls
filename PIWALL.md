# PIWALL.md

## Network

**ASUS ROUTER 1**
admin creds
`admin:infocalypse`


**ASUS ROUTER 2**
admin creds
`admin:password`

**Wireless Area Network**
network: mmm-piwall-5G
password: `mmmanyfold`

**SSH**

pi@192.168.29.XYX / password is **mmm**

## Raspberry PiWall Setup

**ALL:** `sudo raspi-config` and enable

### PW Master

- `sudo apt-get install libav-tools`

### PW Tiles

- Download [pwlibs](http://dl.piwall.co.uk/pwlibs1_1.1_armhf.deb) & [pwomxplayer](http://dl.piwall.co.uk/pwomxplayer_20130815_armhf.deb)
- `sudo dpkg -i /home/pi/pwlibs1_1.1_armhf.deb`
- `sudo dpkg -i /home/pi/pwomxplayer_20130815_armhf.deb`
- `sudo rpi-update`

### Prevent Sleep

- `sudo nano /boot/config.txt`
- Add:

## Power down monitor when lockscreen enabled

- `hdmi_blanking=1`
- `sudo nano ~/.config/lxsession/LXDE-pi/autostart`
- Add:

```	
@xset s 0 0
@xset s noblank
@xset s noexpose
@xset dpms 0 0 0
```

- `sudo reboot`


#### Fix screen offset

- `sudo nano /boot/config.txt`

#### 9" TVs
```
overscan_left=16
overscan_right=8
overscan_top=-8
overscan_bottom=-12
```

## PiWall Commands

### Tiles (listen)

`pwomxplayer --tile-code=$n udp://239.0.1.23:1234?buffer_size=1200000B`

#### if using .piwall configuration file:

`pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B`

### Master (stream)

`avconv -re -i indonesia_crop.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234`

## MAC ADDRS — IP MAP TABLE
```
B8:27:EB:D4:5E:2A 192.168.29.180 (master) ----------
B8:27:EB:E4:1E:43 192.168.29.234 (tile) K ----------
B8:27:EB:7E:4B:06 192.168.29.245 (tile) I ----------
B8:27:EB:BF:F9:6B 192.168.29.241 (tile) J ----------
B8:27:EB:70:83:E1 192.168.29.148 (tile) H ----------
B8:27:EB:A3:41:66 192.168.29.249 (tile) G ----------
B8:27:EB:12:4E:6F 192.168.29.213 (tile) F ----------
B8:27:EB:74:04:67 192.168.29.217 C [08.08.18]
B8:27:EB:52:C8:54 192.168.29.202 D [08.08.18]
B8:27:EB:01:53:AD 192.168.29.122 B [08.08.18]
B8:27:EB:61:1C:4B 192.168.29.243 E [08.08.18]
B8:27:EB:59:72:EA 192.168.29.185 L [08.08.18]
B8:27:EB:09:F6:EC 192.168.29.127 M [08.08.18]
```

## Copy SSH key after re-imaging PI

`ssh-keygen -f "/home/pi/.ssh/known_hosts" -R 192.168.29.XYZ`

