# Kube-vip

Kube-vip, for my installation, is set as a pod definition that will live in the manifest directory. This is due to the fact that the network interface is different on some
machines. I would have liked to have used a daemonset, but due to this limitation it's out of the question.

Need to investigate ansible moving this for me so I can be lazy.
