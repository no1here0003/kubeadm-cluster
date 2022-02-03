#!/bin/sh
sudo kubeadm init --control-plane-endpoint "vip-k8s-master:8443" --upload-certs --cri-socket "/run/containerd/containerd.sock" --pod-network-cidr 10.20.0.0/16
