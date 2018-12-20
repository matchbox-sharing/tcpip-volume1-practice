# Network status of lo [TODO: add topic graph]

Without any configuration, we are going to inspect the status of sole PC, which has no connection with any other devices. More important, we will start to use network analysis tools.

### Inspect loopback interface [TODO: add video]
Execute `make iplink`, and `make ifconfig` which implements `ip link` and `ifconfig` on `lo`.

<div style="text-align:center">
<img src="https://www.lucidchart.com/publicSegments/view/f97aca16-372e-412a-a6e7-b28eec6c2d72/image.png">
</div>
{% center %} **Fig 1.2**: Packet encapsulation {% endcenter %}

### ICMP on `lo` [TODO: add video]
Inspect network activity of `lo` through `make iptables_filter` and `wireshark`, analyze `ping`.

<div style="text-align:center">
<img src="https://www.lucidchart.com/publicSegments/view/e3352f73-bfb3-40a5-af80-34ca60164902/image.png">
</div>
{% center %} **Fig 1.3**: ICMP packet {% endcenter %}


### DNS on `lo` [TODO: add video]
Inspect network activity of `lo` through `make iptables_filter` and `wireshark`, analyze `nslookup`.

<div style="text-align:center">
<img src="https://www.lucidchart.com/publicSegments/view/6b936a95-61c9-4ad2-82c7-f44fcf44f515/image.png">
</div>
{% center %} **Fig 1.4**: DNS packet {% endcenter %}

[comment]: <> (### What is MTU [TODO: add video])
[comment]: <> (Inspect MTU through `make ping_default`, `make ping_with_MTU`, `make ping_with_random_size`. )

### First glance at `iptables` [TODO: add video]
Enable and config trace through `make enable_tracing`, `make start_trace`, `make trace_log`. 

