usage() {
    echo "$0 usage: $0 [status | config]"
}

status() {
    echo "=== /etc/network/interfaces ==="
    sudo cat /etc/network/interfaces
    echo "=== network status ==="
    ./config_iface_CLI.sh status
}

config() {
    sudo bash -c "cat etc_network_interfaces.conf >> /etc/network/interfaces"
    sudo systemctl restart networking.service

}

status
config
status


case $1 in 
    config)
        config
        ;;
    status)
        status
        ;;
    *)
        usage
        ;; 
esac
