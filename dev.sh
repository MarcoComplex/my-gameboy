#!/usr/bin/env bash

xhost +local: > /dev/null

#docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) -t gameboy-dev .

exec docker run --rm -it --name gameboy \
  -v "$PWD":/app:Z -e DISPLAY="$DISPLAY" \
  -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/dri \
  gameboy-dev "$@"
