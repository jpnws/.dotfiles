#!/bin/sh

dwmblocks &
dex -a &
hsetroot -solid "#203248" &
while true; do
  dwm > /dev/null 2>&1
done
exec dwm
