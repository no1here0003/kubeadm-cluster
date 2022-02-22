You can now join any number of the control-plane node running the following command on each as root:

  kubeadm join vip-k8s-master:8443 --token n8nczk.tznb74fvo2v42cev \
    --discovery-token-ca-cert-hash sha256:c47ed357bd7757c85c38a2a122c184ef22e099d09ce9b6a83467aec80daf6776 \
    --control-plane --certificate-key 3670dd1bd8419c78e8764807cded1b639c38ddcd01e065a0f6cbdabebb9aa408

Please note that the certificate-key gives access to cluster sensitive data, keep it secret!
As a safeguard, uploaded-certs will be deleted in two hours; If necessary, you can use
"kubeadm init phase upload-certs --upload-certs" to reload certs afterward.

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join vip-k8s-master:8443 --token n8nczk.tznb74fvo2v42cev \
    --discovery-token-ca-cert-hash sha256:c47ed357bd7757c85c38a2a122c184ef22e099d09ce9b6a83467aec80daf6776
