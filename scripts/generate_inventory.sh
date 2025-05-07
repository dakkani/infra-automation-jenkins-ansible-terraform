#!/bin/bash
set -e  # Exit immediately on error

cd "$(dirname "$0")/../terraform"  # Navigate to terraform directory

# Initialize and apply Terraform
terraform init -input=false
terraform apply -auto-approve -input=false

# Generate inventory from Terraform outputs
terraform output -raw inventory > ../ansible/inventory.ini

# Add SSH key configuration to inventory
echo -e "\n[all:vars]" >> ../ansible/inventory.ini
echo "ansible_ssh_private_key_file=~/.ssh/infra-key" >> ../ansible/inventory.ini
echo "ansible_python_interpreter=/usr/bin/python3" >> ../ansible/inventory.ini

echo "Inventory file generated successfully:"
cat ../ansible/inventory.ini
