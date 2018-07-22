#!/bin/bash


status() {
    echo "==== Is iptable log enabled ? ===="
    sudo sysctl net.netfilter.nf_log.2
}



enable() {
    echo "==== ENABLE nf_log.2 ===="
    sudo modprobe -v nf_log_ipv4
    sudo sysctl net.netfilter.nf_log.2=nf_log_ipv4
}

status
enable
status
