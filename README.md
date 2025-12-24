<div align="center">

[![Open in Codespaces](https://img.shields.io/badge/Open%20in-Codespaces-24292e?logo=github&style=for-the-badge)](https://codespaces.new/atulkamble/template.git)
[![Open with VS Code](https://img.shields.io/badge/Open%20with-VS%20Code-007ACC?logo=visualstudiocode&style=for-the-badge)](https://vscode.dev/github/atulkamble/template)
[![Open with GitHub Desktop](https://img.shields.io/badge/Open%20with-GitHub%20Desktop-purple?logo=github&style=for-the-badge)](https://desktop.github.com/)

**🌍 Hello World Collection** | Built with ❤️ by [Atul Kamble](https://github.com/atulkamble)

[![GitHub](https://img.shields.io/badge/GitHub-atulkamble-181717?logo=github)](https://github.com/atulkamble)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-atuljkamble-0A66C2?logo=linkedin)](https://www.linkedin.com/in/atuljkamble/)
[![X](https://img.shields.io/badge/X-atul_kamble-000000?logo=x)](https://x.com/atul_kamble)

**Version 1.0.0** | Last Updated: December 2025

</div>

**A comprehensive collection of "Hello, World!" programs in multiple programming languages with execution instructions for Linux/EC2.**

## 🚀 Quick Start

Clone this repository and run any hello world program:

```bash
git clone https://github.com/atulkamble/helloworld.git
cd helloworld
# Run any program (see commands below)
```

## 📚 Programming Languages

### 🐍 **Python**
```bash
# File: python/hello.py
python3 python/hello.py
```

### ☕ **Java**
```bash
# File: java/HelloWorld.java
javac java/HelloWorld.java
java -cp java HelloWorld
```

### 🌐 **JavaScript (Node.js)**
```bash
# File: nodejs/hello.js
node nodejs/hello.js
```

### 🟦 **TypeScript**
```bash
# File: typescript/hello.ts
# Install: npm install -g typescript
tsc typescript/hello.ts && node typescript/hello.js
```

### 🌟 **Go**
```bash
# File: go/hello.go
go run go/hello.go
```

### 🦀 **Rust**
```bash
# File: rust/hello.rs
rustc rust/hello.rs
./hello
```

### ⚡ **C**
```bash
# File: c/hello.c
gcc c/hello.c -o c/hello
./c/hello
```

### 🔧 **C++**
```bash
# File: cpp/hello.cpp
g++ cpp/hello.cpp -o cpp/hello
./cpp/hello
```

### 💎 **Ruby**
```bash
# File: ruby/hello.rb
ruby ruby/hello.rb
```

### 🐘 **PHP**
```bash
# File: php/hello.php
php php/hello.php
```

### 🐚 **Bash**
```bash
# File: bash/hello.sh
bash bash/hello.sh
```

### 🟣 **C# (.NET)**
```bash
# File: csharp/hello.cs
# Install: dotnet SDK
dotnet new console --name HelloWorld --output csharp/temp
cp csharp/hello.cs csharp/temp/Program.cs
cd csharp/temp && dotnet run
```

### 🟢 **Kotlin**
```bash
# File: kotlin/hello.kt
# Install: kotlinc
kotlinc kotlin/hello.kt -include-runtime -d kotlin/hello.jar
java -jar kotlin/hello.jar
```

### 🍎 **Swift**
```bash
# File: swift/hello.swift
swift swift/hello.swift
```

### 🎯 **Dart**
```bash
# File: dart/hello.dart
dart run dart/hello.dart
```

### 🔴 **Scala**
```bash
# File: scala/hello.scala
# Install: scala
scala scala/hello.scala
```

---

## 🛠 DevOps & Infrastructure Examples

### 🐳 **Docker**
```bash
# Build and run Hello DevOps container
cd devops/docker
chmod +x run.sh
./run.sh

# Or manually:
docker build -t hello-devops .
docker run -d -p 8080:8080 --name hello-devops hello-devops
curl http://localhost:8080
```

**Files:** `devops/docker/`
- `Dockerfile` - Multi-stage Docker build
- `docker-compose.yml` - Full stack with nginx
- `run.sh` - Quick deployment script

### ☸️ **Kubernetes**
```bash
# Deploy Hello DevOps to Kubernetes
cd devops/kubernetes
chmod +x deploy.sh
./deploy.sh

# Or manually:
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get pods -n hello-devops
```

**Files:** `devops/kubernetes/`
- `deployment.yaml` - K8s deployment with 3 replicas
- `service.yaml` - Service, ConfigMap, and Secret
- `deploy.sh` - Deployment automation script

### ⛵ **Helm Charts**
```bash
# Deploy with Helm
cd devops/helm
helm install hello-devops . --namespace hello-devops --create-namespace

# Check status
helm status hello-devops
kubectl get pods -n hello-devops

# Upgrade
helm upgrade hello-devops . --set replicaCount=5

# Uninstall
helm uninstall hello-devops
```

**Files:** `devops/helm/`
- `Chart.yaml` - Helm chart metadata
- `values.yaml` - Default configuration values
- `templates/` - K8s manifest templates

### 🌍 **Terraform (AWS)**
```bash
# Deploy infrastructure with Terraform
cd devops/terraform
chmod +x deploy.sh
./deploy.sh

# Or manually:
terraform init
terraform plan
terraform apply -auto-approve

# Get outputs
terraform output instance_public_ip
```

**Files:** `devops/terraform/`
- `main.tf` - Complete AWS infrastructure
- `deploy.sh` - Automated deployment script
- Creates: VPC, EC2, Security Groups, Load Balancer

### ⚓ **Ansible**
```bash
# Configure and deploy with Ansible
cd devops/ansible
chmod +x run.sh
./run.sh

# Or manually:
ansible-playbook -i inventory playbook.yml
```

**Files:** `devops/ansible/`
- `playbook.yml` - Complete deployment playbook
- `inventory` - Host configuration
- `run.sh` - Automated execution script

### 🔁 **CI/CD Pipelines**

#### **GitHub Actions**
```bash
# Copy to .github/workflows/
cp devops/cicd/github-actions.yml .github/workflows/hello-devops.yml

# Pipeline includes:
# ✅ Testing → 🏗️ Building → 🚀 Deploying → 🧪 Integration Tests
```

#### **Jenkins Pipeline**
```bash
# Use devops/cicd/Jenkinsfile in your Jenkins job
# Pipeline stages: Checkout → Test → Build → Push → Deploy → Integration Tests
```

#### **Azure DevOps**
```bash
# Import devops/cicd/azure-pipelines.yml to Azure DevOps
# Includes Docker build, AKS deployment, and notifications
```

**Files:** `devops/cicd/`
- `github-actions.yml` - GitHub Actions workflow
- `Jenkinsfile` - Jenkins declarative pipeline  
- `azure-pipelines.yml` - Azure DevOps pipeline

---

## 🚀 DevOps Quick Start Guide

### **1. 🐳 Container Deployment**
```bash
# Quick Docker deployment
cd devops/docker && ./run.sh
curl http://localhost:8080
```

### **2. ☸️ Kubernetes Deployment**  
```bash
# Deploy to local Kubernetes (minikube/Docker Desktop)
cd devops/kubernetes && ./deploy.sh
kubectl port-forward -n hello-devops svc/hello-devops-service 8080:80
```

### **3. ☁️ Cloud Deployment**
```bash
# AWS with Terraform
cd devops/terraform && ./deploy.sh

# Configuration with Ansible  
cd devops/ansible && ./run.sh
```

### **4. 📦 Package Management**
```bash
# Deploy with Helm
cd devops/helm
helm install hello-devops . --create-namespace --namespace hello-devops
```

---

## 🛡️ DevOps Best Practices Included

- **🔐 Security**: Secrets management, least privilege access
- **📊 Monitoring**: Health checks, logging, metrics
- **🔄 GitOps**: Infrastructure as Code, version control
- **🧪 Testing**: Automated testing, integration tests
- **📈 Scalability**: Auto-scaling, load balancing
- **🚀 Deployment**: Blue-green, rolling updates
- **💾 Backup**: State management, disaster recovery

---

## 📦 Prerequisites for EC2 (Amazon Linux 2023)

```bash
# Update system
sudo yum update -y

# Install development tools
sudo yum install -y gcc gcc-c++ make git

# Install language runtimes
sudo yum install -y python3 java nodejs php ruby golang
```

---

## 📊 Language Comparison Table

| Language   | File            | Command                                    | Use Cases                           |
|:-----------|:----------------|:-------------------------------------------|:-----------------------------------|
| Python     | `hello.py`      | `python3 hello.py`                        | AI/ML, Data Science, Web APIs      |
| Java       | `HelloWorld.java` | `javac HelloWorld.java && java HelloWorld` | Enterprise Apps, Android           |
| JavaScript | `hello.js`      | `node hello.js`                           | Web Development, APIs              |
| TypeScript | `hello.ts`      | `tsc hello.ts && node hello.js`          | Type-safe JavaScript              |
| Go         | `hello.go`      | `go run hello.go`                         | Cloud/Containers, Performance     |
| Rust       | `hello.rs`      | `rustc hello.rs && ./hello`               | Systems Programming, WebAssembly  |
| C          | `hello.c`       | `gcc hello.c -o hello && ./hello`         | System Programming, Embedded      |
| C++        | `hello.cpp`     | `g++ hello.cpp -o hello && ./hello`       | Games, High Performance           |
| C#         | `hello.cs`      | `dotnet run`                              | .NET Applications, Games          |
| Kotlin     | `hello.kt`      | `kotlinc hello.kt && java -jar hello.jar` | Android, JVM Applications         |
| Swift      | `hello.swift`   | `swift hello.swift`                       | iOS/macOS Development             |
| Dart       | `hello.dart`    | `dart run hello.dart`                     | Flutter Mobile Apps               |
| Scala      | `hello.scala`   | `scala hello.scala`                       | Big Data, Functional Programming  |
| Ruby       | `hello.rb`      | `ruby hello.rb`                           | Web Development, Scripting        |
| PHP        | `hello.php`     | `php hello.php`                           | Web Development, WordPress        |
| Bash       | `hello.sh`      | `bash hello.sh`                           | System Administration, DevOps     |

---

## 🚀 Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/atulkamble/helloworld.git
   cd helloworld
   ```

2. **Test all programming languages:**
   ```bash
   chmod +x test_hello_worlds.sh
   ./test_hello_worlds.sh
   ```

3. **Test all DevOps examples:**
   ```bash
   chmod +x test_devops.sh
   ./test_devops.sh
   ```

4. **Run individual programs:**
   ```bash
   # Example: Run Python
   python3 python/hello.py
   
   # Example: Run Go
   go run go/hello.go
   
   # Example: Deploy with Docker
   cd devops/docker && ./run.sh
   ```

5. **Pick your language/tool and start coding!**

---

## 📊 Complete DevOps Toolkit

| Tool | Purpose | Files | Command |
|:-----|:--------|:------|:--------|
| **🐳 Docker** | Containerization | `devops/docker/` | `./devops/docker/run.sh` |
| **☸️ Kubernetes** | Container Orchestration | `devops/kubernetes/` | `./devops/kubernetes/deploy.sh` |
| **⛵ Helm** | K8s Package Manager | `devops/helm/` | `helm install hello-devops ./devops/helm/` |
| **🌍 Terraform** | Infrastructure as Code | `devops/terraform/` | `./devops/terraform/deploy.sh` |
| **⚓ Ansible** | Configuration Management | `devops/ansible/` | `./devops/ansible/run.sh` |
| **🔁 GitHub Actions** | CI/CD | `devops/cicd/github-actions.yml` | Auto-triggers on push |
| **🔵 Jenkins** | CI/CD | `devops/cicd/Jenkinsfile` | Import to Jenkins job |
| **🔷 Azure DevOps** | CI/CD | `devops/cicd/azure-pipelines.yml` | Connect to Azure DevOps |

### 🎯 **DevOps Workflow Examples**

1. **🚀 Local Development**
   ```bash
   # Test code → Build container → Deploy locally
   ./test_hello_worlds.sh
   ./devops/docker/run.sh
   curl http://localhost:8080
   ```

2. **☁️ Cloud Deployment**  
   ```bash
   # Provision infrastructure → Deploy application
   ./devops/terraform/deploy.sh
   ./devops/kubernetes/deploy.sh
   ```

3. **📦 Production Pipeline**
   ```bash
   # Setup CI/CD → Commit code → Auto-deploy
   ./setup_cicd.sh
   git add . && git commit -m "Deploy Hello DevOps"
   git push origin main
   ```

---

## 🤝 Contributing

Want to add more languages or improve existing examples? 

1. Fork this repository
2. Add your language in a new directory: `language_name/hello.ext`
3. Update this README.md with your language
4. Submit a pull request

---

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🔗 Related Projects

- [Python Hello World](https://github.com/atulkamble/pythonhelloworld)
- [Go Hello World](https://github.com/atulkamble/gohelloworld)
- [Java Hello World](https://github.com/atulkamble/javahelloworld)
- [.NET Hello World](https://github.com/atulkamble/dotnethelloworld)

---

**🎉 Happy Coding! Welcome to the wonderful world of programming and DevOps!**
