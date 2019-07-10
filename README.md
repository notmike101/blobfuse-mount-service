# BlobFuse Mount Service

Blobfuse Web Server Mounting

Makes life easier, trust me.

## Setup

1. This is expected to live EXACTLY at `/fuse-config` owned by root with standard permissions for root only.

2. [Install blobfuse](https://github.com/Azure/azure-storage-fuse/wiki/1.-Installation)

3. Create all necessary configuration files in the conf.d directory.  Use the `storage.cfg.example` file if necessary.  These configuration files are used by the blobfuse program.

4. Create all necessary mount points based off the configuration names (The config file name without the extension) in the `/mnt/` directory.

5. Run `sudo ./setup-service.sh` to set up the fuse-mount service.

## Usage

The fuse-mount service accepts three service calls: `start`, `stop`, `restart`.

Start will mount all configured storage blobs

Stop will unmount all mounted storage blobs

Restart will perform the start and stop actions sequentially.