
#!/bin/bash

set -e

exec > /var/log/frappe-install.log 2>&1

echo "Starting Frappe CRM installation..."

apt-get update -y
apt-get install -y python3 wget

wget -O /tmp/easy-install.py https://frappe.io/easy-install.py

python3 /tmp/easy-install.py deploy \
  --project=crm_prod_setup \
  --email="${deployment_email}" \
  --image=ghcr.io/frappe/crm \
  --version=stable \
  --app=crm \
  --sitename "${site_name}"

echo "Frappe CRM installation completed."
