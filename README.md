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

For the standard interface a network `10.200.1.1/16` is created, each
`veth-vpeer` pair obtains the following IP addresses:

`veth 10.200.N.1` - `vpeer 10.200.N.2`, where `N > 1` is the container
number according to the account. Globally, the IP address `10.200.1.1`
is stored in a file, and each new container, when created in this file,
increases the IP address by `256`, and when deleted, lowers it by `256`.

Routing is configured as follows: `10.200.N.1/24`.
Same applied to the virtual bridge, with a network `10.100.1.1/16`.

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
sudo ./poc run net-disabled test0 bash # Run Bash session inside the container

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
