#!/bin/bash
ansible-playbook ./update-pve-inventory.yml -i ./proxmox-host
ansible-playbook ./update_ubuntu.yml -i ./inventory.txt
