## closet of souls

### setup

`./copy-ssh-keys.sh`

### running main loop

`./loop.sh`

### shutting down all Pi's

```
./shutdown.sh
```

### rebooting all Pi's

```
./reboot.sh
```

### update piwall tile config

```
./update-tiles.sh
```
### kill process by name

```
./kill.sh <process name>
i.e.
./kill.sh omxplayer # stops local video
./kill.sh pwomxplayer # stops stream listener
```

### Copying SSH key after re-imaging PI

`ssh-keygen -f "/home/pi/.ssh/known_hosts" -R 192.168.29.XYZ`

