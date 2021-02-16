# ansible-dynamic-proxmox-pool-inventory

1. Copy ssh key from ansible to promox
1. Edit proxmox-host
2. Create pool "ansible_ubuntu" in proxmox and add hosts to it
3. run update-ansible_ubuntu-pool.sh (the update script is just an example)

Notes:
Hostname and Name in Proxmox have to be identical
