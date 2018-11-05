# Network hardware 


### Let's have a look at the physical device

* Ethernet interface card (expose the interfaces of switch, pc, usb-NIC, rpi) 
* Wireless network card 
* Ethernet cable (test)

### Let's observe the network interface from OS

* `hw_hardware.sh` to check the NIC information when plugging in the cable and being without the cable
* where is the device file hidden [Question](https://askubuntu.com/questions/306594/why-do-ethernet-devices-not-show-up-in-dev) and [Answer](http://www.faqs.org/docs/artu/plan9.html), using `sysfile_network`
