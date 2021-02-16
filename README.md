# ansible-dynamic-proxmox-pool-inventory

This repository contains a simple playbook to create a inventory files that contain the hostnames from the containers and vms in a Proxmox Pool. It also contains an example playbook to update the hosts in the inventory via apt

Prerequisites:

- Ansible needs to connect to any Proxmox host in your Cluster via SSH key Authentification (Example: ssh-copy-id -i ~/.ssh/mykey root@proxmox).
- A Pool in your Proxmox named "ansible_ubuntu" (if you want to choose a different name, you have to check the files in this repository and also change it there).
- the Ansible host has to have access to the hosts in the pool with SSH key authentification via dns name.
- Since the Playbook only fetches the name from proxmox the vm/ct name has to be identical to the hostname.

How to use:
Copy the files to your ansible host, and run the first playbook to update the hosts and the second one (optional) to update the hosts in the Inventory.

ansible-playbook ./update-pve-inventory.yml -i ./proxmox-host

ansible-playbook ./update_ubuntu.yml -i ./inventory.txt

If you have any Questions or Suggestions, feel free to open a Issue here on Github.
