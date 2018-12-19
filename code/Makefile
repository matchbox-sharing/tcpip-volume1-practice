include $(CURDIR)/setting.env

.PHONY: network iplink ifconfig
network:
	sudo lshw -class network
iplink:
	sudo ip link show $(IFACE)
ifconfig:
	sudo ifconfig $(IFACE)
iptables_filter:
	watch -n 1 sudo iptables -L -nv

.PHONY: ping_default ping_with_MTU ping_with_random_size
ping_default:
	ping -c $(CNT) $(IFACE) 
ping_with_MTU:
	ping -c $(CNT) -s $(MTU) $(IFACE)
ping_with_random_size:
	ping -c $(CNT) -s $(SIZE) $(IFACE)


.PHONY: enable_tracing disable_tracing tracing_status
enable_tracing:
	sudo modprobe -v nf_log_ipv4
	sudo sysctl net.netfilter.nf_log.2=nf_log_ipv4

tracing_status:
	sudo sysctl net.netfilter.nf_log.2

disable_tracing:
	sudo sysctl net.netfilter.nf_log.2=NONE

.PHONY: start_trace stop_trace
start_trace:
	sudo iptables -t raw -A OUTPUT -o $(IFACE) -p $(PROTOCOL) -j TRACE
	sudo iptables -t raw -A PREROUTING -i $(IFACE) -p $(PROTOCOL) -j TRACE
stop_trace:
	sudo iptables -t raw -D OUTPUT -o $(IFACE) -p $(PROTOCOL) -j TRACE
	sudo iptables -t raw -D PREROUTING -i $(IFACE) -p $(PROTOCOL) -j TRACE
trace_status:
	sudo iptables -t raw -S OUTPUT
	sudo iptables -t raw -S PREROUTING
trace_log:
	sudo tail -n 100 /var/log/kern.log

