# Network status of sole PC [TODO: add topic graph]

Without any configuration, we are going to inspect the status of sole PC, which is with no connection with any other devices. More important, we will start to use network analysis tools.

### Inspect loopback interface [TODO: add video]
Execute `inspect_iface_state.sh`, which implements `ip link` and `ifconfig` on `lo`.

### ICMP on `lo` [TODO: add video]
Inspect network activity of `lo` through `tb_filter_monitor.sh` and `wireshark`, analyze `ping`

### DNS on `lo` [TODO: add video]
Inspect network activity of `lo` through `tb_filter_monitor.sh` and `wireshark`, analyze `nslookup`

### What is MTU [TODO: add video]
Inspect MTU through `ping_MTU.sh` 

### First glance at `iptables` [TODO: add video]
Enable and config trace through `enable_trace.sh` and `tb_raw_trace.sh` 
