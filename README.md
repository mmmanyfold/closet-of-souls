## closet of souls

### setup

`./copy-ssh-keys.sh`

### running

```
# from listeners
./listen-all.sh

# from steam
pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B 
```

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