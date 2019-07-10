#!/bin/bash
for d in /mnt/fuse-* ; do
        fusermount -u "$d"
done