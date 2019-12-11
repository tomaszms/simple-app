# django app & K8S deployment based on Ansible AWX and vSphere

The goal of this project is to quickly deploy kubernetes cluster (master and two worker nodes) based on vSphere (ESXi) environment and simple django application. 
Automation is based using Ansible AWX.

### Prerequisites

```
Ansible AWX / Ansible
NFS Server (optional)
Access to the internet
VM Centos OVF image available on Ansible
```

### Installing

1. Run: 00_provision_virtual_nodes.yml in order to deploy virtual nodes (master, worker1, worker2, loadbalancer) and provide the following variables:

	  - cloud_name: melvspherekub1
	  - vsphere_host: your_vspher_ip
	  - vsphere_password: your_vsphere_password
	  - vsphere_user: your_vsphere_user

2. Run: 01_deploy_kubernetes.yml in order to deploy kubernetes cluster and provide the following variables:

	  - cloud_name: melvspherekub1
	  - ansible_user: your_ansible_user

3. Run: 02_deploy_simple_app.yml in order to deploy simple-app based on k8s. Provide postgres variables:

	  - postgres_password: your_postgres_user
	  - postgres_user: your_postgres_password



