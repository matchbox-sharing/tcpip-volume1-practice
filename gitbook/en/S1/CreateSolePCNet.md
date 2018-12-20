# Configure your own interface (TODO: add topic graph)

### Config network through CLI on-the-fly (TODO: add video)
* Execute `make cli_set_iface IFACE=xxx` with and without the cable plugged in
* Play with isolated interface, `ping`,`ssh`

### Config network through configuration file (TODO: add video)
* Execute `make file_cfg_iface IFACE=xxx` and reboot

### Usage of analysis tools
* Play with isolated interface, `ping`, `ssh` through `iptables TRACK`, `wireshark`
    * `wireshark` CANNOT inspect network flow when `ping 10.0.0.2`, is that strange ? So try `ssh username@10.0.0.2` to see what happens ?
    * `iptables TRACK` CANNOT inspect network flow when `ping 10.0.0.2`, strange ? And try `ssh username@10.0.0.2`
    * However, the network flow is detected through `lo` both using `iptables TRACK` and `wireshark`
    * Try `ping -s` with MTU limitation to see how it works
