#!/bin/bash


# make html file using cat's hear document
sudo cat << 'EOF' > /etc/systemd/network/pan0.netdev
[NetDev]
Name=pan0
Kind=bridge
EOF


sudo cat << 'EOF' > /etc/systemd/network/pan0.network
[Match]
Name=pan0

[Network]
Address=172.20.1.1/24
DHCPServer=yes
EOF


