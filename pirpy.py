# This program -
#  - hooks into the GPIO pins and detects motion
#  - shutoff display as a reset
#  - start the pi_frame slideshow
#  - turn on display
#  - based on GPIO turn on or off the display

import RPi.GPIO as GPIO
import time
import subprocess

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
GPIO.setup(11, GPIO.IN)

# Reset display
screen_state=0
subprocess.call(["./display.sh", "off"])

# Call the script to run the slideshow
subprocess.Popen(["./picture-frame-command.sh"])
subprocess.Popen(["./display.sh", "on"])

while True:
 i=GPIO.input(11)
 if i==1:
  if screen_state==0:
   print "Motion detected", screen_state
   subprocess.call(["./display.sh", "on"])
  screen_state=1
  time.sleep(1*60*1)
 if i==0:
  print "No Motion detected", screen_state
  if screen_state!=0:
   subprocess.call(["./display.sh", "off"])
   screen_state=0
  time.sleep(1)
  
