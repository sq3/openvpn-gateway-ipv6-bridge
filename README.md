# OpenVPN configuration for IPv4 and IPv6 gateway
With this VPN, you can use your own IPv6 subnet from an Internet
connection that does not provide IPv6 regularly. It also tunnels the
entire IPv4 traffic. So you are no longer tracked by your ISP \ o /

For example, You can get your own IPv6 subnet with a [Netcup](https://netcup.de)
RootServer or at [SixXS](https://www.sixxs.net/main)

# Installation
To install this setup install the [OpenVPN](https://openvpn.net/)
Package on your client and Server, generate the Keys and place the
Configs. After that you need to run the `iptables-enforce.sh` to
configure IPv4 / IPv6 Forwarding, and alle required iptables rules.

# ND Proxy
- https://en.wikipedia.org/wiki/Neighbor_Discovery_Protocol
- http://unix.stackexchange.com/questions/136211/routing-public-ipv6-traffic-through-openvpn-tunnel

