#!/bin/bash
for f in /fuse-config/conf.d/*; do
        filename="${f##*/}"
        basename="${filename%%.[^.]*}"
        /usr/bin/blobfuse "/mnt/fuse-${basename}" --tmp-path="/mnt/fusetmp-${basename}" -o attr_timeout=240 -o entry_timeout=240 -o negative_timeout=120 --config-file="/fuse-config/conf.d/${filename}"
done
