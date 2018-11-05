# Network status of sole PC 

Without any configuration, we are going to inspect the status of sole PC, which is with no connection with any other devices. More important, we will start to use network analysis tools.

### Inspect loopback interface
Execute `inspect_iface_state.sh`, which implements `ip link` and `ifconfig` on `lo`.

### ICMP on `lo` 
Inspect network activity of `lo` through `tb_filter_monitor.sh` and `wireshark`, analyze `ping`

### DNS on `lo` 
Inspect network activity of `lo` through `tb_filter_monitor.sh` and `wireshark`, analyze `nslook up`

### What is MTU
Inspect MTU through `ping_MTU.sh` 

### First glance at `iptables`
Enable and config trace through `enable_trace.sh` and `tb_raw_trace.sh` 
