#!/bin/sh
sudo ip netns list | cut -d' ' -f 1 | sudo xargs -n1 ip netns delete;sudo  crictl rmp -af
sudo kubeadm reset -f
sudo rm -rf /etc/cni/net.d
