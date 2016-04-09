#!/bin/sh
export LD_LIBRARY_PATH=/usr/local/lib
mjpg_streamer -i "input_uvc.so -f 5 -r 320x240 -d /dev/video0 -y -n" -o "output_http.so -w /usr/local/www -p 8081" -b
mjpg_streamer -i "input_uvc.so -f 5 -r 320x240 -d /dev/video1 -y -n" -o "output_http.so -w /usr/local/www -p 8082" -b
mjpg_streamer -i "input_uvc.so -f 5 -r 320x240 -d /dev/video2 -y -n" -o "output_http.so -w /usr/local/www -p 8083" -b
mjpg_streamer -i "input_uvc.so -f 5 -r 320x240 -d /dev/video3 -y -n" -o "output_http.so -w /usr/local/www -p 8084" -b

