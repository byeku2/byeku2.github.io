#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 path/to/icon.svg"
    exit 1
fi
FNAME=$1
if [ ! -f "$FNAME" ]; then
    echo "Error: file $FNAME doesn't exist"
    exit 1
fi

DESTDIR="$(dirname "$FNAME")"

inkscape -w 32 -h 32 static/logo.svg -o static/favicon.png
magick static/favicon.png static/favicon.ico
inkscape -w 180 -h 180 static/logo.svg -o static/apple-touch-icon.png
inkscape -w 192 -h 192 static/logo.svg -o static/android-chrome-192x192.png
inkscape -w 512 -h 512 static/logo.svg -o static/android-chrome-512x512.png