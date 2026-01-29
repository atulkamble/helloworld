#!/bin/bash
# Ansible Hello DevOps Deploy Script

echo "⚓ Running Ansible Hello DevOps Playbook..."

# Check if Ansible is installed
if ! command -v ansible-playbook &> /dev/null; then
    echo "❌ Ansible not found. Installing..."
    # For macOS
    if [[ "$OSTYPE" == "darwin"* ]]; then
        brew install ansible 2>/dev/null || pip3 install ansible
    # For Linux
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get update && sudo apt-get install -y ansible 2>/dev/null || \
        sudo yum install -y ansible 2>/dev/null || \
        pip3 install ansible
    fi
fi

# Run the playbook
echo "🚀 Executing playbook..."
ansible-playbook -i inventory playbook.yml

echo "✅ Ansible deployment complete!"