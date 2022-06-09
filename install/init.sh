#!/bin/sh
sudo kubeadm init --control-plane-endpoint "192.168.3.9:8443" \
     --upload-certs --cri-socket "/run/containerd/containerd.sock" \
     --pod-network-cidr 10.42.0.0/16 \
     --service-cidr 10.43.0.0/16
