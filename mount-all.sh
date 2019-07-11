#!/bin/bash
for f in /fuse-config/conf.d/*; do
        filename="${f##*/}"
        basename="${filename%%.[^.]*}"
        mkdir -p "/mnt/fuse-${basename}"
        mkdir -p "/mnt/fusetmp-${basename}"
        chown www-data:www-data /mnt/fuse*
        /usr/bin/blobfuse "/mnt/fuse-${basename}" --tmp-path="/mnt/fusetmp-${basename}" -o attr_timeout=240 -o entry_timeout=240 -o negative_timeout=120 --config-file="/fuse-config/conf.d/${filename}"
done
