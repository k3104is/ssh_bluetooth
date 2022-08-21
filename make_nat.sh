#!/bin/bash

sudo sysctl net.ipv4.ip_forward=1

sudo iptables -t filter -F
sudo iptables -P FORWARD ACCEPT
sudo iptables -t nat -F
sudo iptables -t nat -L
sudo iptables -t nat \
  -A POSTROUTING \
  -o wlan0 \
  -s 172.20.1.0/24 \
  -j MASQUERADE
sudo iptables -t nat -L
