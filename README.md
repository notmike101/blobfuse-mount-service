# BlobFuse Mount Service

Blobfuse Web Server Mounting

Takes multiple stored configuration files specifying which blob storage block to use and mounts the blob block into `/mnt/fuse-(blobname)`.

## Setup

1. This is expected to live EXACTLY at `/fuse-config` owned by root with standard permissions for root only.

2. [Install blobfuse](https://github.com/Azure/azure-storage-fuse/wiki/1.-Installation)

3. Create all necessary configuration files in the `conf.d` directory.  Use the `storage.cfg.example` file if necessary.  These configuration files are used by the blobfuse program.

5. Run `sudo ./install-service.sh` to install the service file and make life easier.

## Usage

The fuse-mount service accepts three service calls: `start`, `stop`, `restart`.

Start will mount all configured storage blobs

Stop will unmount all mounted storage blobs

Restart will perform the start and stop actions sequentially.

## Notes

Any time you add a new file in the `conf.d` directory, you must restart the fuse-mount service for any changes to take effect.

For the time being, all mounts are configured to run under the `www-data` user because SO FAR there's only been a use for web servers.