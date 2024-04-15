# POC - Proof of ~~Concept~~ Container Runtime written in Bash

Minimal container runtime with isolated PID, IPC, mnt, net for
Linux distributions.

Containers support networking through either default bridge
(parsed from `route` command, usually eth0, enp34s0, or wlan0) or
`pocbr0` virtual bridge (analog of `docker0` bridge).

Every container mounts `procfs` and `sysfs` on startup.

Rootfs is built by `docker` once at project initialization,
with included network diagnostics tools and `sysbench`. See
`Dockerfile` for detailed information of included tools.

Project creates `/var/lib/poc_container` directory.

## Usage

To run a container, run:

```bash
sudo ./poc init  # Need to run once to initialize project files and build rootfs
sudo ./poc build test_container disk-size 20G
sudo ./poc run net-default test_container bash # Run Bash session inside the container

# Press Ctrl+D to exit from the container
```

To remove the container, firstly exit from it, then run:

```bash
sudo ./poc rm test_container
```

To remove everything related to this project, first, stop all containers,
then run:

```bash
sudo ./poc prune
```

See `sudo ./poc help` for detailed information.

## Dependencies

This project was tested on Ubuntu 22.04. Dependencies can be installed
by running: 

```bash
sudo apt update && sudo apt install iptables libcgroup util-linux net-tools iproute2
```
