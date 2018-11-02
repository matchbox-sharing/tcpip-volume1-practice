# 1.c Configure your own interface

Back to the "cave period", when your computer is isolated from any other PCs, let's explore the status of computer with some network tools.


### Config network through CLI on-the-fly
    * execute `config_interface_CLI.sh` with and without the cable plugged in
    * play with isolated interface, `ping`,`ssh`


### Config network through configuration file (interface status and link status)
    * execute `config_interface_FILE.sh` and reboot
    * play with isolated interface, `ping`, `ssh` through `iptables TRACK`, `wireshark`
        * `wireshark` CANNOT inspect network flow when `ping 10.0.0.2`, try `ssh username@10.0.0.2` 
        * `iptables TRACK` CANNOT inspect network flow when `ping 10.0.0.2`, try `ssh username@10.0.0.2`
        * However, the network flow is detected through `lo` both on `iptables TRACK` and `wireshark`
        * Try `ping -s` with MTU limitation to see how it works
