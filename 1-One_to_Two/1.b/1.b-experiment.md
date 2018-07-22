# 1.b Isolated PC, loopback interface 

Back to the "cave period", when your computer is isolated from any other PCs, let's explore the status of computer with some network tools.


### Inspect loopback interface through `inspect_iface_state.sh`
    * ip link 
    * ifonfig

### Any network flow in loopback 
    * inspect network activity of `lo` through `tb_filter_monitor.sh` and `wireshark`, analyze `ping`
    * inspect network activity of `lo` through `tb_filter_monitor.sh` and `wireshark`, analyze `nslook up`
    * inspect MTU through `ping_MTU.sh` 
    * enable and config trace through `enable_trace.sh` and `tb_raw_trace.sh` 
