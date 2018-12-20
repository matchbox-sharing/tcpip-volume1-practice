# Connect two computers, let's make a network [TODO: add topic graph]

### Config NIC in the same network, and connect them with cable [TODO: add video]
* Execute `make cli_set_iface IFACCE=xxx` on two computers and reboot, see what happened
* Modify the `make file_cfg_iface`, making the ip different and reboot, see what happened
* Play with `ping`, `ssh` through `iptables TRACK`, `wireshark`

### Config NIC in the different network, and connect them with cable [TODO: add video]
* Modify the `make file_cfg_iface`, making the ip different which are in different network and reboot, see what happened
* Play with `ping`, `ssh` through `iptables TRACK`, `wireshark`
* Use `ip route`, make them be able to communicate
