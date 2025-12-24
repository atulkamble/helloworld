FROM alpine:latest

# Install curl for health checks
RUN apk add --no-cache curl

# Create app directory
WORKDIR /app

# Copy application files
COPY . .

# Expose port
EXPOSE 8080

# Add health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8080/health || exit 1

# Run the application
CMD ["sh", "-c", "echo 'Hello, DevOps World from Docker!' && nc -l -p 8080 -e echo 'HTTP/1.1 200 OK\r\n\r\nHello, DevOps World!'"]