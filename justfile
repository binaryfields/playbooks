home:
    ansible-playbook playbook.yml -i inventory/home/hosts.ini

flow-harden:
    ansible-playbook k3s-harden.yml -i inventory/flow/hosts.ini

flow-nat:
    ansible-playbook k3s-cluster.yml -i inventory/flow/hosts.ini --tags nat

flow-common:
    ansible-playbook k3s-cluster.yml -i inventory/flow/hosts.ini --tags common

flow-mfs:
    ansible-playbook k3s-cluster.yml -i inventory/flow/hosts.ini --tags mfs

flow-k3s:
    ansible-playbook k3s-cluster.yml -i inventory/flow/hosts.ini --tags k3s

flow-proxy:
    ssh -L 6443:10.0.0.3:6443 flowgate

flow-kubeconfig:
    cp artifacts/kubeconfig ~/.kube/config
