#!/bin/bash

IFACE="lo" # You can change the IFACE as your ethernet interface
TABLE="raw"

usage() {
    echo "$0 usage: $0 [status | config | restore | trace]"
}

action() {
    op=$1
    interface=$2
    table=$3
    sudo iptables -t $table -$op OUTPUT -o $interface -j TRACE
    sudo iptables -t $table -$op PREROUTING -i $interface -j TRACE
   
}

status() {
    table=$1

    echo "=== iptables $table ==="
    sudo iptables -t $table -L -nv 
    echo ""
}


trace() {
    sudo tail -n 100 /var/log/kern.log
}

config() {
    interface=$1
    table=$2

    echo ""
    echo "Start tracing $IFACE"
    echo ""
    action "A" $interface $table 
    status $table
}

restore() {
    interface=$1
    table=$2

    echo ""
    echo "Stop tracing $IFACE"
    echo ""
    action "D" $interface $table
    status $table
}



case $1 in 
    config)
        config $IFACE $TABLE
        ;;
    restore)
        restore $IFACE $TABLE
        ;;
    status)
        status $TABLE
        ;;
    trace)
        trace
        ;;
    *)
        usage
        ;; 
esac
