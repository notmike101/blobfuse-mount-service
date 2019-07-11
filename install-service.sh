#!/bin/bash
cp fuse-mount.service /lib/systemd/system/fuse-mount.service
ln -s /lib/systemd/system/fuse-mount.service /etc/systemd/system/fuse-mount.service
systemctl enable fuse-mount.service