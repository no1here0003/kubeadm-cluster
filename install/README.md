# Installation


In this case the run1.sh talks me through getting haproxy up and running.

install_kube.sh will install everything and add the google repo to apt.

Next edit the /etc/hosts file to have k8s-api pointing to the LB ip.

Verify the primary ip owns the LB ip via:

`ip a s`



run2.sh adds firewalld stuff


init.sh is used to initialize the cluster on hte first (primary) master. Once that script has success it outputs what the commands are to
add additional nodes.

MAKE SURE TO ADD THE --pod-network-cidr and that it matches the values in the flannel.yml.

Apply flannel.yml via ```kubectl apply -f flannel.yml```. This can be done after installation of the first node. It uses a Daemonset so it will automagically spin up more instances as new nodes join.

NOTE: My installation uses wireguard as flannel's backend. Type vxlan would revert to the "old" way.


Right now if the primary master node is down kube still does not respond, even if I can ping the HAProxy address. Is this normal?
