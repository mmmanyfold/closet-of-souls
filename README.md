## closet of souls

### running
```
./copy-ssh-keys.sh
./listen-all.sh

# from master 
avconv -re -i indonesia.mp4 -map 0:0 -vcodec copy -f avi udp://239.0.1.23:1234 -map 0:1 -acodec copy -f avi udp://239.2.2.3:2020
```

### shutting down

```
./shutdown.sh
```