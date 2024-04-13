#!/bin/bash

ROOTFS_ARCHIVE=rootfs.tar.xz

BASE_PATH=/var/lib/poc_container

IMAGES_PATH=$BASE_PATH/overlay
MOUNTPOINTS_PATH=$BASE_PATH/mnt


prepare_dirs_environment () {
    sudo mkdir -p $BASE_PATH $IMAGES_PATH $MOUNTPOINTS_PATH
}

prune_dirs_environment () {
    sudo rm -rf $BASE_PATH
}

setup_rootfs () {
    local image_path=$IMAGES_PATH/$1.img
    local mountpoint_path=$MOUNTPOINTS_PATH/$1
    local size=$2

    # Create an empty file which will be associated with loop device
    sudo fallocate -l $size $image_path

    # Create a loop device
    loop_device=$(sudo losetup -fP --show $image_path)

    # Create EXT4 filesystem inside the loop device
    sudo mkfs.ext4 $loop_device &> /dev/null

    # Mount loop device
    sudo mkdir -p $mountpoint_path
    sudo mount -t ext4 $loop_device $mountpoint_path

    # Unpack and copy debian-slim rootfs to the image file
    sudo tar -xf $ROOTFS_ARCHIVE -C $mountpoint_path
}

remove_rootfs () {
    local image_path=$IMAGES_PATH/$1.img

    # Get loop device by image name
    # Cuts '/dev/loop0' from '/dev/loop0: []: (/var/lib/poc_container/overlay/test_loop.img)'
    loop_device=$(losetup -j $image_path | awk -F: '{print $1}')

    # Umount and remove loop device
    sudo umount $loop_device
    sudo losetup -D $loop_device

    # Remove image
    sudo rm -f $image_path
}

prepare_dirs_environment
setup_rootfs test_loop 10G
remove_rootfs test_loop
prune_dirs_environment
