#!/bin/bash
# Kubernetes Hello DevOps Deploy Script

echo "☸️ Deploying Hello DevOps to Kubernetes..."

# Apply namespace and resources
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

echo "🔍 Checking deployment status..."
kubectl get pods -n hello-devops

echo "📋 Getting service info..."
kubectl get svc -n hello-devops

echo "📝 To view logs:"
echo "kubectl logs -n hello-devops -l app=hello-devops -f"

echo "🧹 To cleanup:"
echo "kubectl delete namespace hello-devops"