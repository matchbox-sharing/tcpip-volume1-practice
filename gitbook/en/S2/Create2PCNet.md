# Connect two computers, let's make a network

### Config NIC in the same network, and connect them with cable 
    * execute `config_interface_FILE.sh` on two computers and reboot, see what happened
    * modify the `etc_network_interfaces`, making the ip different and reboot, see what happened
    * play with `ping`, `ssh` through `iptables TRACK`, `wireshark`

### Config NIC in the different network, and connect them with cable 
    * modify the `etc_network_interfaces`, making the ip different which are in different network and reboot, see what happened
    * play with `ping`, `ssh` through `iptables TRACK`, `wireshark`
    * use `ip route`, make them be able to communicate
