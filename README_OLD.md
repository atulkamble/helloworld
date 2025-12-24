# 🌍 Hello World Collection

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

---

## 🐳 Docker

### Dockerfile

```dockerfile
FROM alpine
CMD ["echo", "Hello, DevOps World!"]
```

```bash
docker build -t hello-devops .
docker run hello-devops
```

---

## ☸ Kubernetes

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: hello-devops
spec:
  containers:
  - name: hello
    image: busybox
    command: ["echo", "Hello, DevOps World!"]
```

```bash
kubectl apply -f pod.yaml
kubectl logs hello-devops
```

---

## 🔁 Jenkins Pipeline

```groovy
pipeline {
  agent any
  stages {
    stage('Hello') {
      steps {
        echo 'Hello, DevOps World!'
      }
    }
  }
}
```

---

## ⚙️ GitHub Actions

```yaml
name: Hello DevOps
on: [push]
jobs:
  hello:
    runs-on: ubuntu-latest
    steps:
      - run: echo "Hello, DevOps World!"
```

---

## 🔵 Azure DevOps Pipeline

```yaml
trigger:
- main

pool:
  vmImage: ubuntu-latest

steps:
- script: echo Hello, DevOps World!
```

---

## 🌍 Terraform

```hcl
output "hello" {
  value = "Hello, DevOps World!"
}
```

```bash
terraform init
terraform apply
```

---

## ⚓ Ansible

```yaml
- name: Hello DevOps
  hosts: localhost
  tasks:
    - debug:
        msg: "Hello, DevOps World!"
```

---

## ☁ AWS CLI

```bash
aws sts get-caller-identity
echo "Hello, DevOps World!"
```

---

## ☁ Azure CLI

```bash
az account show
echo "Hello, DevOps World!"
```

---

## 📊 Prometheus (Sample Metric)

```txt
hello_devops_total 1
```

---

## 📈 Grafana (Text Panel)

```
Hello, DevOps World!
```

---

## 🧪 Curl / API

```bash
curl https://example.com
echo "Hello, DevOps World!"
```

---

## 🧠 Interview-Ready One-Liner

> **DevOps = Automate → Build → Test → Deploy → Monitor → Improve**

---

If you want, I can next:

* 🔥 Bundle this into a **single GitHub repo**
* 🧪 Convert into **end-to-end CI/CD demo**
* 🎓 Turn it into **DevOps lab exercises**
* 📘 Create a **DevOps HelloWorld training README**

Just tell me 👍
---

# 🚀 DEVOPS HELLO WORLD – EXTENDED EDITION

---

## 🐚 Bash Script

```bash
#!/bin/bash
echo "Hello DevOps from Bash"
```

---

## 🐚 PowerShell

```powershell
Write-Output "Hello DevOps from PowerShell"
```

---

## 🐍 Python Flask App

```python
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello DevOps from Flask!"

app.run(host="0.0.0.0", port=5000)
```

---

## ☕ Spring Boot

```java
@RestController
public class HelloController {
    @GetMapping("/")
    public String hello() {
        return "Hello DevOps from Spring Boot";
    }
}
```

---

## 🌐 NGINX

```nginx
server {
    listen 80;
    location / {
        return 200 "Hello DevOps from NGINX\n";
    }
}
```

---

## 🐳 Docker – Web App

```dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
```

```html
<h1>Hello DevOps from Docker + NGINX</h1>
```

---

## 🐳 Docker Compose

```yaml
version: "3"
services:
  web:
    image: nginx
    ports:
      - "8080:80"
```

---

## ☸ Kubernetes Deployment

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hello-devops
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hello
  template:
    metadata:
      labels:
        app: hello
    spec:
      containers:
      - name: hello
        image: nginx
```

---

## ☸ Kubernetes Service

```yaml
apiVersion: v1
kind: Service
metadata:
  name: hello-svc
spec:
  type: NodePort
  selector:
    app: hello
  ports:
    - port: 80
```

---

## ⛵ Helm Chart (values.yaml)

```yaml
replicaCount: 1
image:
  repository: nginx
```

---

## 🔁 Jenkins Multistage

```groovy
pipeline {
  agent any
  stages {
    stage('Build') {
      steps { echo 'Build Hello DevOps' }
    }
    stage('Deploy') {
      steps { echo 'Deploy Hello DevOps' }
    }
  }
}
```

---

## 🔁 GitHub Actions – Docker Build

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - run: docker build -t hello-devops .
```

---

## 🔵 Azure DevOps – Multi Stage

```yaml
stages:
- stage: Build
  jobs:
  - job: BuildJob
    steps:
    - script: echo Hello DevOps Build

- stage: Deploy
  jobs:
  - job: DeployJob
    steps:
    - script: echo Hello DevOps Deploy
```

---

## 🌍 Terraform – AWS EC2

```hcl
resource "aws_instance" "hello" {
  ami           = "ami-0abcdef"
  instance_type = "t2.micro"
  user_data     = "echo Hello DevOps > /tmp/hello.txt"
}
```

---

## 🌍 Terraform – Azure VM

```hcl
output "hello" {
  value = "Hello DevOps from Azure Terraform"
}
```

---

## ⚓ Ansible Role

```yaml
- name: Hello DevOps Role
  debug:
    msg: "Hello DevOps from Ansible Role"
```

---

## 🔐 HashiCorp Vault

```bash
vault kv put secret/hello value="Hello DevOps from Vault"
```

---

## 🔐 Kubernetes Secret

```bash
kubectl create secret generic hello-secret \
--from-literal=msg="Hello DevOps Secret"
```

---

## 📊 Prometheus Alert

```yaml
groups:
- name: hello-alert
  rules:
  - alert: HelloDevOps
    expr: vector(1)
```

---

## 📈 Grafana Loki Log

```txt
{"level":"info","msg":"Hello DevOps from Loki"}
```

---

## 🔎 ElasticSearch

```json
{
  "message": "Hello DevOps from Elastic"
}
```

---

## 🛡 SonarQube

```yaml
sonar.projectKey=hello-devops
sonar.projectName=Hello DevOps
```

---

## 🧪 Selenium

```java
System.out.println("Hello DevOps Selenium Test");
```

---

## 🧪 Postman (API Test)

```json
{
  "info": {
    "name": "Hello DevOps API"
  }
}
```

---

## 📦 Maven

```xml
<name>Hello DevOps Maven</name>
```

---

## 📦 Gradle

```groovy
task hello {
    doLast {
        println 'Hello DevOps from Gradle'
    }
}
```

---

## 📜 Makefile

```makefile
hello:
	echo "Hello DevOps from Makefile"
```

---

## 🧰 ArgoCD

```yaml
spec:
  source:
    repoURL: https://github.com/example/hello-devops
```

---

## 🧠 DevOps Interview Power Line

```text
Code + Automation + CI/CD + Cloud + Monitoring = DevOps
```

---



---

## 📦 Pre-requisites:

After SSH into your EC2 instance:

```bash
sudo yum update -y
sudo yum install -y gcc gcc-c++ make git
sudo amazon-linux-extras enable python3
sudo yum install -y python java nodejs php ruby go
```

**For newer versions or other runtimes (like Rust, .NET, Dart, etc.), use their official install scripts (I'll mention them where needed).**

---

## 📜 Hello World Programs on EC2 (Amazon Linux 2023)

---

### 📌 Python

**File:** `hello.py`

```python
print("Hello, World!")
```

**Run:**

```bash
python3 hello.py
```

---

### 📌 Java

**File:** `HelloWorld.java`

```java
public class HelloWorld {
  public static void main(String[] args) {
    System.out.println("Hello, World!");
  }
}
```

**Compile & Run:**

```bash
javac HelloWorld.java
java HelloWorld
```

---

### 📌 C

**File:** `hello.c`

```c
#include <stdio.h>

int main() {
  printf("Hello, World!\n");
  return 0;
}
```

**Compile & Run:**

```bash
gcc hello.c -o hello
./hello
```

---

### 📌 C++

**File:** `hello.cpp`

```cpp
#include <iostream>
using namespace std;

int main() {
  cout << "Hello, World!" << endl;
  return 0;
}
```

**Compile & Run:**

```bash
g++ hello.cpp -o hello
./hello
```

---

### 📌 Go

**File:** `hello.go`

```go
package main
import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

**Run:**

```bash
go run hello.go
```

---

### 📌 Node.js (JavaScript)

**File:** `hello.js`

```javascript
console.log("Hello, World!");
```

**Run:**

```bash
node hello.js
```

---

### 📌 PHP

**File:** `hello.php`

```php
<?php
echo "Hello, World!\n";
?>
```

**Run:**

```bash
php hello.php
```

---

### 📌 Ruby

**File:** `hello.rb`

```ruby
puts "Hello, World!"
```

**Run:**

```bash
ruby hello.rb
```

---

### 📌 Rust

**Install Rust (if not pre-installed):**

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
```

**File:** `hello.rs`

```rust
fn main() {
    println!("Hello, World!");
}
```

**Compile & Run:**

```bash
rustc hello.rs
./hello
```

---

### 📌 Bash

**File:** `hello.sh`

```bash
#!/bin/bash
echo "Hello, World!"
```

**Run:**

```bash
bash hello.sh
```

---
| Language                 | File              | Command                                    | 📌 Significance                                                                                                                                                                    |
| :----------------------- | :---------------- | :----------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Python** 🐍            | `hello.py`        | `python3.8 hello.py`                       | High-level, versatile language used for AI/ML, data science, web apps, automation, DevOps scripting, and backend services. Dominates cloud and AI tooling.                         |
| **Java** ☕               | `HelloWorld.java` | `javac HelloWorld.java && java HelloWorld` | Robust, object-oriented language widely used in enterprise applications, Android development, backend APIs, and large-scale distributed systems.                                   |
| **C**                    | `hello.c`         | `gcc hello.c -o hello && ./hello`          | Foundational language for systems programming, embedded systems, OS development, and performance-critical applications.                                                            |
| **C++**                  | `hello.cpp`       | `g++ hello.cpp -o hello && ./hello`        | Extends C with object-oriented capabilities. Popular in game engines (Unreal), systems software, high-frequency trading platforms, and high-performance applications.              |
| **Go (Golang)** 🐹       | `hello.go`        | `go run hello.go`                          | Designed for cloud-native development, concurrent systems, container orchestration tools (Docker, Kubernetes), and high-performance backend services.                              |
| **Node.js (JavaScript)** | `hello.js`        | `node hello.js`                            | Server-side JavaScript runtime used for building scalable web applications, real-time apps, and APIs. Key in full-stack and microservices architectures.                           |
| **PHP**                  | `hello.php`       | `php hello.php`                            | Classic web development language still used in WordPress, Drupal, Magento, and legacy enterprise web systems.                                                                      |
| **Ruby**                 | `hello.rb`        | `ruby hello.rb`                            | Elegant, expressive language historically known for rapid web development via the Ruby on Rails framework.                                                                         |
| **Rust** 🦀              | `hello.rs`        | `rustc hello.rs && ./hello`                | Modern systems programming language known for safety, concurrency, and performance. Used in cloud tooling, WebAssembly, security-sensitive applications, and modern OS components. |
| **Bash**                 | `hello.sh`        | `bash hello.sh`                            | Essential for Linux and cloud infrastructure scripting, automation tasks, deployment pipelines, and system administration.                                                         |

## ✅ Summary

| Language | File            | Command to Run                             |
| :------- | :-------------- | :----------------------------------------- |
| Python   | hello.py        | `python3.8 hello.py`                       |
| Java     | HelloWorld.java | `javac HelloWorld.java && java HelloWorld` |
| C        | hello.c         | `gcc hello.c -o hello && ./hello`          |
| C++      | hello.cpp       | `g++ hello.cpp -o hello && ./hello`        |
| Go       | hello.go        | `go run hello.go`                          |
| Node.js  | hello.js        | `node hello.js`                            |
| PHP      | hello.php       | `php hello.php`                            |
| Ruby     | hello.rb        | `ruby hello.rb`                            |
| Rust     | hello.rs        | `rustc hello.rs && ./hello`                |
| Bash     | hello.sh        | `bash hello.sh`                            |

---
