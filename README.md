# PacketTool
A basic packet sniffer with custom filters, port recognition, and more. 

Coding paradigm: https://www.tcpdump.org/pcap.html
See the pcap man page for filter options.


Usage: 

    ./packetTool -d [device] -f "[filter]"

Options:

    interface    Listen on <device> for packets. (leave blank for default)

    filter       Packet filter, for example "udp port 20". Quotes are required.

Example:

    $: ./packetTool -d eth0 -f "tcp port 80"

