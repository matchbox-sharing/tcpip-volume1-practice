# Network status of lo [TODO: add topic graph]

Without any configuration, we are going to inspect the status of sole PC, which is with no connection with any other devices. More important, we will start to use network analysis tools.

### Inspect loopback interface [TODO: add video]
Execute `make iplink`, and `make ifconfig` which implements `ip link` and `ifconfig` on `lo`.

### ICMP on `lo` [TODO: add video]
Inspect network activity of `lo` through `make iptables_filter` and `wireshark`, analyze `ping`.

### DNS on `lo` [TODO: add video]
Inspect network activity of `lo` through `make iptables_filter` and `wireshark`, analyze `nslookup`.

[comment]: <> (### What is MTU [TODO: add video])
[comment]: <> (Inspect MTU through `make ping_default`, `make ping_with_MTU`, `make ping_with_random_size`. )

### First glance at `iptables` [TODO: add video]
Enable and config trace through `make enable_tracing`, `make start_trace`, `make trace_log`. 
