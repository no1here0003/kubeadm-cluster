#!/bin/sh
sudo containerd config default > config.toml
sudo mkdir /etc/containerd
sudo mv config.toml /etc/containerd/

# Follow directions for altering toml here: https://kubernetes.io/docs/setup/production-environment/container-runtimes/#containerd
