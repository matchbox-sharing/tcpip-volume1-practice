usage() {
    echo "$0 usage: $0 <command> <interface>"
    echo ""
    echo "command options:"
    echo "      status  Display the status of interface"
    echo "      config  Config the interface"
}

status() {
    interface=$1
    echo "=== /etc/network/interfaces ==="
    sudo cat /etc/network/interfaces
    echo "=== network status ==="
    ./config_iface_CLI.sh status $interface
}

config() {
    # TODO: should make an interface replacement in the conf file firstly.
    sudo bash -c "cat etc_network_interfaces.conf >> /etc/network/interfaces"
    sudo systemctl restart networking.service

}



case $1 in 
    config)
        config
        ;;
    status)
        status $2 
        ;;
    *)
        usage
        ;; 
esac
