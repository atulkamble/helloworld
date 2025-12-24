#!/bin/bash

# Setup CI/CD Files Script
echo "🔁 Setting up CI/CD files for your repository..."

# Create .github/workflows directory if it doesn't exist
mkdir -p .github/workflows

# Copy GitHub Actions workflow
cp devops/cicd/github-actions.yml .github/workflows/hello-devops.yml
echo "✅ GitHub Actions workflow copied to .github/workflows/hello-devops.yml"

# Copy Jenkinsfile to root (if not already there)
if [ ! -f "Jenkinsfile" ]; then
    cp devops/cicd/Jenkinsfile .
    echo "✅ Jenkinsfile copied to root directory"
else
    echo "ℹ️ Jenkinsfile already exists in root"
fi

# Create azure-pipelines.yml in root (standard location)
if [ ! -f "azure-pipelines.yml" ]; then
    cp devops/cicd/azure-pipelines.yml .
    echo "✅ Azure Pipelines file copied to root directory"
else
    echo "ℹ️ azure-pipelines.yml already exists in root"
fi

echo ""
echo "🎉 CI/CD setup complete!"
echo ""
echo "📋 Files ready for:"
echo "   🟢 GitHub Actions: .github/workflows/hello-devops.yml"
echo "   🔵 Jenkins: Jenkinsfile"  
echo "   🔵 Azure DevOps: azure-pipelines.yml"
echo ""
echo "💡 Next steps:"
echo "   1. Commit and push to trigger GitHub Actions"
echo "   2. Import Jenkinsfile to your Jenkins job"
echo "   3. Connect azure-pipelines.yml to Azure DevOps"