# POC - Proof of ~~Concept~~ Container Runtime written in Bash

Minimal container runtime with isolated PID, IPC, mnt, net for
GNU/Linux distributions.

For now `cpu,memory` cgroups are used with default settings.

Containers support networking through either default bridge
(parsed from `route` command, usually eth0, enp34s0, or wlan0) or
`pocbr0` virtual bridge (analog of `docker0` bridge).

Each container has its own `veth-vpeer` pair identified by name, i.e
for container `test0` - `veth0_test0 <-> vpeer1_test0`. Same for
network namespace: `netns_test0` and cgroup: `cpu,memory:test0`.

Each container mounts `procfs` and `sysfs` on startup.

Rootfs is built by `docker` once at project initialization,
with included network diagnostics tools and `sysbench`. See
`Dockerfile` for detailed information of included tools.

Project creates `/var/lib/poc_container` directory.

## Usage

To run a container, run:

```bash
sudo ./poc init  # Need to run once to initialize project files and build rootfs
sudo ./poc build test0 disk-size 20G
sudo ./poc run net-default test0 bash # Run Bash session inside the container

# Press Ctrl+D to exit from the container
```

> Notice that `veth-vpeer` interfaces are identified by container name, thus
for now container names should be as short as possible.

To remove the container, firstly exit from it, then run:

```bash
sudo ./poc rm test0
```

To remove everything related to this project, first, stop all containers,
then run:

```bash
sudo ./poc prune
```

See `sudo ./poc help` for detailed information.

## Dependencies

This project was tested on ArchLinux. Dependencies are: 

```bash
iptables
libcgroup
util-linux
net-tools
iproute2
docker # Only for rootfs building
```

## Demo video

[https://youtu.be/MvewehI-lFg](https://youtu.be/MvewehI-lFg)
