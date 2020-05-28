#!/bin/bash

sleep 10

killall -q chromium
chromium &

sleep 3

#killall -q firefox
#firefox &

sleep 3

# thunderbird
killall -q thunderbird
thunderbird &

# rocket
kill -9 $(pgrep rocketchat) > /dev/null
rocketchat-desktop %U &

sleep 2

#kill -9 $(pgrep code) > /dev/null
#code &

#sleep 3


