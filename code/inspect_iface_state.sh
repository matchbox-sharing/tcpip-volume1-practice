
cmd_ip_link() {
    interface=$1
    echo "==== ip link of $interface ===="
    sudo ip link show $interface
    echo ""
}



cmd_ifconfig() {
    interface=$1
    echo "==== ifconfig of $interface ===="
    sudo ifconfig $interface
    echo ""
}



cmd_ip_link lo
cmd_ifconfig lo
