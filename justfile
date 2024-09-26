flow-harden:
    ansible-playbook k3s-harden.yml -i inventory/flow

flow-nat:
    ansible-playbook k3s-cluster.yml -i inventory/flow --tags nat

flow-common:
    ansible-playbook k3s-cluster.yml -i inventory/flow --tags common

flow-mfs:
    ansible-playbook k3s-cluster.yml -i inventory/flow --tags mfs

flow-k3s:
    ansible-playbook k3s-cluster.yml -i inventory/flow --tags k3s

flow-proxy:
    ssh -L 6443:10.0.0.5:6443 flowgate

flow-kubeconfig:
    cp artifacts/kubeconfig ~/.kube/config

home:
    ansible-playbook home.yml -i inventory/home
