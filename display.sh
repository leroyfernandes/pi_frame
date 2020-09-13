#!/bin/bash

#if [[ $1 == 'on' ]]; then
#   echo 'display will be turned on'
#   vcgencmd display_power 1
#fi
#
#if [[ $1 == 'off' ]]; then
#   echo 'display will be turned off'
#   vcgencmd display_power 0
#fi
#
#if [[ -n $1 ]] && [[ $(vcgencmd display_power) = "display_power=1" ]]; then
#   echo 'display will be turned off'
#   vcgencmd display_power 0
#fi
#
#if [[ -n $1 ]] && [[ $(vcgencmd display_power) = "display_power=0" ]]; then
#   echo 'display will be turned on'
#   vcgencmd display_power 1
#fi

case $1 in
  on) 
    echo 'display will be turned on'
    vcgencmd display_power 1
    ;;
  off)
    echo 'display will be turned off'
    vcgencmd display_power 0
    ;;
  *)
    if [[ $(vcgencmd display_power) = "display_power=1" ]]; then
      echo '* display will be turned off'
      vcgencmd display_power 0
    elif [[ $(vcgencmd display_power) = "display_power=0" ]]; then
      echo '* display will be turned on'
      vcgencmd display_power 1
    fi
    ;;
esac

