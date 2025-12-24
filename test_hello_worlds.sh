#!/bin/bash

# Hello World Test Script
echo "🌍 Testing Hello World programs..."
echo "=================================="

# Make bash script executable
chmod +x bash/hello.sh

# Test existing languages
echo "🐍 Python:"
python3 python/hello.py

echo ""
echo "☕ Java:"
if command -v javac &> /dev/null && command -v java &> /dev/null; then
    javac java/HelloWorld.java
    java -cp java HelloWorld
    rm java/HelloWorld.class 2>/dev/null
else
    echo "Java not installed"
fi

echo ""
echo "🌐 Node.js:"
if command -v node &> /dev/null; then
    node nodejs/hello.js
else
    echo "Node.js not installed"
fi

echo ""
echo "🌟 Go:"
if command -v go &> /dev/null; then
    go run go/hello.go
else
    echo "Go not installed"
fi

echo ""
echo "🦀 Rust:"
if command -v rustc &> /dev/null; then
    rustc rust/hello.rs -o rust/hello
    ./rust/hello
    rm rust/hello 2>/dev/null
else
    echo "Rust not installed"
fi

echo ""
echo "⚡ C:"
if command -v gcc &> /dev/null; then
    gcc c/hello.c -o c/hello
    ./c/hello
    rm c/hello 2>/dev/null
else
    echo "GCC not installed"
fi

echo ""
echo "🔧 C++:"
if command -v g++ &> /dev/null; then
    g++ cpp/hello.cpp -o cpp/hello
    ./cpp/hello
    rm cpp/hello 2>/dev/null
else
    echo "G++ not installed"
fi

echo ""
echo "💎 Ruby:"
if command -v ruby &> /dev/null; then
    ruby ruby/hello.rb
else
    echo "Ruby not installed"
fi

echo ""
echo "🐘 PHP:"
if command -v php &> /dev/null; then
    php php/hello.php
else
    echo "PHP not installed"
fi

echo ""
echo "🐚 Bash:"
bash bash/hello.sh

echo ""
echo "🟦 TypeScript:"
if command -v tsc &> /dev/null && command -v node &> /dev/null; then
    tsc typescript/hello.ts
    node typescript/hello.js
    rm typescript/hello.js 2>/dev/null
else
    echo "TypeScript or Node.js not installed"
fi

echo ""
echo "🟣 C# (.NET):"
if command -v dotnet &> /dev/null; then
    echo "C# code available in csharp/hello.cs (requires project setup)"
else
    echo ".NET not installed"
fi

echo ""
echo "🟢 Kotlin:"
if command -v kotlinc &> /dev/null; then
    kotlinc kotlin/hello.kt -include-runtime -d kotlin/hello.jar
    java -jar kotlin/hello.jar
    rm kotlin/hello.jar 2>/dev/null
else
    echo "Kotlin not installed"
fi

echo ""
echo "🍎 Swift:"
if command -v swift &> /dev/null; then
    swift swift/hello.swift
else
    echo "Swift not installed"
fi

echo ""
echo "🎯 Dart:"
if command -v dart &> /dev/null; then
    dart run dart/hello.dart
else
    echo "Dart not installed"
fi

echo ""
echo "🔴 Scala:"
if command -v scala &> /dev/null; then
    scala scala/hello.scala
else
    echo "Scala not installed"
fi

echo ""
echo "=================================="
echo "✅ Hello World tests completed!"
echo "📚 Check README.md for installation instructions"