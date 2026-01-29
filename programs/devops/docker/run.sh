#!/bin/bash
# Docker Hello DevOps Build Script

echo "🐳 Building Docker Hello DevOps..."

# Build the image
docker build -t hello-devops:latest .

# Run the container
echo "🚀 Running container on port 8080..."
docker run -d --name hello-devops-container -p 8080:8080 hello-devops:latest

echo "✅ Container started! Test with:"
echo "curl http://localhost:8080"

# Optional: Show logs
echo "📋 Container logs:"
docker logs hello-devops-container