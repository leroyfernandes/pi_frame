echo "start"
#outside
#!/bin/bash
DISPLAY=:0.0 XAUTHORITY=/home/pi/.Xautority /usr/bin/feh -q -p -r -F --zoom fill -R  60 -Y -D 15.0 /home/pi/project/frame/picture-frame

#inside project
#!/bin/bash
#DISPLAY=:0.0 XAUTHORITY=/home/pi/.Xautority /usr/bin/feh -q -p -r -F --bg-center -Y -D 10.0 /home/pi/project/frame/picture-frame

#outside modified
#feh commands
# -q = quiet mode dont return errors
# -p = preload
# -r = recursively expand any directories
# -F
# --zoom fill
# -R 60
# -Y = hide pointer
# -D 15.0

#DISPLAY=:0.0 XAUTHORITY=/home/pi/.Xautority /usr/bin/feh -p -F --auto-zoom --bg-center -R 60 -Y -D 5.0 /home/pi/project/frame/picture-frame

echo "end"