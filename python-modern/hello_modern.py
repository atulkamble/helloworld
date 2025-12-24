#!/usr/bin/env python3
"""
Modern Python Hello World with type hints and best practices
"""

def greet(message: str = "Hello, World!") -> None:
    """Print a greeting message."""
    print(message)

def main() -> None:
    """Main function."""
    greet()

if __name__ == "__main__":
    main()