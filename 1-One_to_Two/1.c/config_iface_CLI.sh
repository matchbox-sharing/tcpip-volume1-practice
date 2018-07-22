#!/bin/bash

usage() {
    echo "$0 usage: $0 <command> <interface>"
    echo ""
    echo "command options:"
    echo "      status        Check the status of interface"
    echo "      config        Config ip, netmask, broadcast of interface"
    echo "      restore       Clean up the configuration of interface"
    echo "examples:"
    echo "      $0 config eth0"
    echo "      $0 status eth0"
    echo "      $0 restore eth0"
}


status() {
    interface=$1
    echo "=== ifconfig ==="
    ifconfig $interface
    echo "=== ip link ==="
    ip link show $interface
    echo ""
    echo "=== ip route ==="
    ip route
    echo ""
}

config() {
    interface=$1
    echo ""
    echo "set $interface ip address 10.0.0.2/24"
    echo ""
    sudo ifconfig $interface 10.0.0.2 broadcast 10.0.0.255 netmask 255.255.255.0
    status $interface
}

restore() {
    interface=$1
    echo ""
    echo "restore the $interface configuration"
    echo ""
    sudo ifconfig $interface 0.0.0.0
    status $interface
}



case $1 in 
    config)
        config $2
        ;;
    restore)
        restore $2
        ;;
    status)
        status $2
        ;;
    *)
        usage
        ;; 
esac
