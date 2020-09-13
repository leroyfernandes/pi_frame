# This program -
#  - hooks into the GPIO pins and detects motion
#  - calls the display.sh subprocess to turn the display on or off
#  - TODO: Start the pi_frame slideshow

import RPi.GPIO as GPIO
import time
import subprocess

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
GPIO.setup(11, GPIO.IN)

screen_state=0

while True:
 i=GPIO.input(11)
 if i==1:
  if screen_state==0:
   print "Motion detected", screen_state
   subprocess.call(["./display.sh", "on"])
  screen_state=1
  time.sleep(1*60*5)
 if i==0:
  print "No Motion detected", screen_state
  if screen_state!=0:
   subprocess.call(["./display.sh", "off"])
   screen_state=0
  time.sleep(1)
  
