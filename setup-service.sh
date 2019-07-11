#!/bin/bash
for f in /fuse-config/conf.d/*.cfg; do
    filename="${f##*/}"
    basename="${filename%%.[^.]*}"
    mkdir -p "/mnt/fuse-${basename}"
    chown www-data:www-data "/mnt/fuse-${basename}"
    mkdir -p "/mnt/fusetmp-${basename}"
    chown www-data:www-data "/mnt/fusetmp-${basename}"
done