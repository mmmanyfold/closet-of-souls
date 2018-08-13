## closet of souls

### setup

`./copy-ssh-keys.sh`

### running

```
# from listeners
./listen.sh

# from streamer
avconv -re -i movie.avi -vcodec copy -f avi -an udp://239.0.1.23:1234
```

### shutting down all Pi's

```
./shutdown-all.sh
```

### rebooting all Pi's

```
./reboot.sh
```

### update piwall tile config

```
./update-tiles.sh
```
