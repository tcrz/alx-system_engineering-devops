#0x07. Networking basics #0

## OSI MODEL  
OSI (Open Systems Interconnection) is an abstract model to describe layered communication and computer network design. The idea is to segregate the different parts of what make communication possible.

It is organized from the lowest level to the highest level:
The lowest level: layer 1 which is for transmission on physical layers with electrical impulse, light or radio signal
The highest level: layer 7 which is for application specific communication like SNMP for emails, HTTP for your web browser, etc  
<img src="https://pbs.twimg.com/media/EcWUf0sXsAAv4_c.png" alt="OSI-Model" width="550" height="400"/>  
The image bellow describes more concretely how you can relate to every level:  
<img src="https://i.imgur.com/1w3wlKp.jpeg" alt="visual representation of OSI-Model" height="400"/>

## TYPES OF NETWORK  
LAN connect local devices together, WAN connects LANs together, and WANs are operating over the Internet.

##MAC ADDRESS  
Every NIC has a hardware address that’s known as a MAC, for Media Access Control. Where IP addresses are associated with TCP/IP (networking software), MAC addresses are linked to the hardware of network adapters.
A MAC address is given to a network adapter when it is manufactured. It is hardwired or hard-coded onto your computer’s network interface card (NIC) and is unique to it.
Something called the ARP (Address Resolution Protocol) translates an IP address into a MAC address. The ARP is like a passport that takes data from an IP address through an actual piece of computer hardware.

##IP ADDRESS  
An IP address is a unique address that identifies a device on the internet or a local network. IP stands for "Internet Protocol," which is the set of rules governing the format of data sent via the internet or local network.
IPv4 and IPv6 are the two IP Addresses that can be used on a network.

##TCP AND UDP  
TCP/IP is a suite of protocols used by devices to communicate over the Internet and most local networks. It is named after two of it’s original protocols—the Transmission Control Protocol (TCP) and the Internet Protocol (IP). TCP provides apps a way to deliver (and receive) an ordered and error-checked stream of information packets over the network. The User Datagram Protocol (UDP) is used by apps to deliver a faster stream of information by doing away with error-checking.
Both TCP and UDP are protocols used for sending bits of data—known as packets—over the Internet. Both protocols build on top of the IP protocol. In other words, whether you’re sending a packet via TCP or UDP, that packet is sent to an IP address. These packets are treated similarly, as they’re forwarded from your computer to intermediary routers and on to the destination.

##PING
Ping is a computer network administration software utility used to test the reachability of a host on an Internet Protocol (IP) network. It is available for virtually all operating systems that have networking capability, including most embedded network administration software.
Ping measures the round-trip time for messages sent from the originating host to a destination computer that are echoed back to the source.

