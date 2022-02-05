#!/bin/sh
sudo kubeadm init --control-plane-endpoint "vip-k8s-master:8443" \
     --upload-certs --cri-socket "/run/containerd/containerd.sock" \
     --pod-network-cidr 10.42.0.0/16 \
     --service-cidr 19.43.0.0/16
