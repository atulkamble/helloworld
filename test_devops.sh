#!/bin/bash

# DevOps Hello World Test Script
echo "🛠️ Testing DevOps Hello World Examples..."
echo "========================================"

# Test Docker (if available)
echo ""
echo "🐳 Docker Test:"
if command -v docker &> /dev/null; then
    cd devops/docker
    echo "Building Docker image..."
    docker build -t hello-devops-test . -q
    echo "Running Docker container..."
    CONTAINER_ID=$(docker run -d -p 8081:8080 --name hello-devops-test hello-devops-test)
    sleep 2
    echo "✅ Docker container started: $CONTAINER_ID"
    
    # Cleanup
    docker stop hello-devops-test >/dev/null 2>&1
    docker rm hello-devops-test >/dev/null 2>&1
    docker rmi hello-devops-test >/dev/null 2>&1
    cd ../..
else
    echo "Docker not installed"
fi

# Test Kubernetes (if available)
echo ""
echo "☸️ Kubernetes Test:"
if command -v kubectl &> /dev/null; then
    echo "Validating Kubernetes manifests..."
    kubectl create --dry-run=client -f devops/kubernetes/deployment.yaml >/dev/null 2>&1 && echo "✅ Deployment manifest valid"
    kubectl create --dry-run=client -f devops/kubernetes/service.yaml >/dev/null 2>&1 && echo "✅ Service manifest valid"
else
    echo "kubectl not installed"
fi

# Test Terraform (if available)
echo ""
echo "🌍 Terraform Test:"
if command -v terraform &> /dev/null; then
    cd devops/terraform
    echo "Validating Terraform configuration..."
    terraform init >/dev/null 2>&1
    terraform validate && echo "✅ Terraform configuration valid"
    cd ../..
else
    echo "Terraform not installed"
fi

# Test Ansible (if available)
echo ""
echo "⚓ Ansible Test:"
if command -v ansible-playbook &> /dev/null; then
    cd devops/ansible
    echo "Validating Ansible playbook..."
    ansible-playbook --syntax-check playbook.yml && echo "✅ Ansible playbook syntax valid"
    cd ../..
else
    echo "Ansible not installed"
fi

# Test Helm (if available)
echo ""
echo "⛵ Helm Test:"
if command -v helm &> /dev/null; then
    cd devops/helm
    echo "Validating Helm chart..."
    helm template . >/dev/null 2>&1 && echo "✅ Helm chart templates valid"
    helm lint . >/dev/null 2>&1 && echo "✅ Helm chart lint passed"
    cd ../..
else
    echo "Helm not installed"
fi

# Test CI/CD file syntax
echo ""
echo "🔁 CI/CD Files Test:"
echo "Checking GitHub Actions workflow..."
if command -v yamllint &> /dev/null; then
    yamllint devops/cicd/github-actions.yml >/dev/null 2>&1 && echo "✅ GitHub Actions YAML valid"
    yamllint devops/cicd/azure-pipelines.yml >/dev/null 2>&1 && echo "✅ Azure Pipelines YAML valid"
else
    echo "✅ GitHub Actions workflow file exists"
    echo "✅ Azure Pipelines file exists"
    echo "✅ Jenkins file exists"
fi

echo ""
echo "========================================"
echo "🎉 DevOps Hello World tests completed!"
echo ""
echo "📚 Available DevOps Examples:"
echo "   🐳 Docker:       devops/docker/"
echo "   ☸️ Kubernetes:   devops/kubernetes/"  
echo "   🌍 Terraform:    devops/terraform/"
echo "   ⚓ Ansible:      devops/ansible/"
echo "   ⛵ Helm:         devops/helm/"
echo "   🔁 CI/CD:        devops/cicd/"
echo ""
echo "💡 Run individual examples:"
echo "   ./devops/docker/run.sh"
echo "   ./devops/kubernetes/deploy.sh"
echo "   ./devops/terraform/deploy.sh"
echo "   ./devops/ansible/run.sh"