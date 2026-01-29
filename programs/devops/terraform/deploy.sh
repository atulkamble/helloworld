#!/bin/bash
# Terraform Hello DevOps Deploy Script

echo "🌍 Deploying Hello DevOps with Terraform..."

# Initialize Terraform
echo "🔧 Initializing Terraform..."
terraform init

# Validate configuration
echo "✅ Validating configuration..."
terraform validate

# Plan the deployment
echo "📋 Planning deployment..."
terraform plan

# Apply (with confirmation)
echo "🚀 Applying configuration..."
read -p "Do you want to proceed with deployment? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    terraform apply -auto-approve
    echo "✅ Deployment complete!"
    echo "🌐 Check the outputs for server URL"
else
    echo "❌ Deployment cancelled"
fi

echo "🧹 To destroy resources later:"
echo "terraform destroy -auto-approve"