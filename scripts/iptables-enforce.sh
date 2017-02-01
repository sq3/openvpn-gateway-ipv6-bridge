echo 1 > /proc/sys/net/ipv4/ip_forward
echo 1 > /proc/sys/net/ipv6/conf/default/forwarding
echo 1 > /proc/sys/net/ipv6/conf/all/forwarding
echo 1 > /proc/sys/net/ipv6/conf/all/proxy_ndp

iptables -A FORWARD -i tun-de-1 -j ACCEPT
iptables -A FORWARD -i tun-de-1 -o ens3 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i ens3 -o tun-de-1 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -t nat -A POSTROUTING -s 192.168.28.0/29 -o ens3 -j MASQUERADE

ip6tables -A FORWARD -i tun-de-1 -o ens3 -m state --state RELATED,ESTABLISHED -j ACCEPT
ip6tables -A FORWARD -i ens3 -o tun-de-1 -m state --state RELATED,ESTABLISHED -j ACCEPT
ip6tables -t nat -A POSTROUTING -s fd00:aaaa:bbbb:cccc::/112 -o ens3 -j MASQUERADE