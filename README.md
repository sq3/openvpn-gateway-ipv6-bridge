# OpenVPN de-1 / ipv6-bridge

This VPN configuration files provides a gateway to don't get tracked by
your internet provider or if you just want to tunnel all traffic over
another server. Also it provides a an IPv6 bridge. With this you are
able to access the internet via IPv6 from a non IPv6 ISP.

For example [Netcup](https://netcup.de) provides a /64 subnet with every
of their RootServer packages. You can use that to bring your personal
IPv6 Subnet to your devices.

# Installation
To install this setup install the [OpenVPN](https://openvpn.net/)
Package on your client and Server, generate the Keys and place the
Configs. After that you need to run the `iptables-enforce.sh` to
configure IPv4 / IPv6 Forwarding, and alle required iptables rules.
