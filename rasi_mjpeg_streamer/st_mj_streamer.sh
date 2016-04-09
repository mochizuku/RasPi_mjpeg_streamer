#!/bin/sh

sudo rmmod uvcvideo
sleep 1
sudo modprobe uvcvideo nodrop=1 timeout=5000 quirks=0x80

cd /home/pi/mjpg-streamer
sudo ./mjpg_streamer -i "./input_uvc.so -f 5 -r 320x240 -d /dev/video0 -y -n" -o "./output_http.so -w ./www -p 8080" &
sudo ./mjpg_streamer -i "./input_uvc.so -f 5 -r 320x240 -d /dev/video1 -y -n" -o "./output_http.so -w ./www -p 8081" &
sudo ./mjpg_streamer -i "./input_uvc.so -f 5 -r 320x240 -d /dev/video2 -y -n" -o "./output_http.so -w ./www -p 8082" &
sudo ./mjpg_streamer -i "./input_uvc.so -f 5 -r 320x240 -d /dev/video3 -y -n" -o "./output_http.so -w ./www -p 8083" &

