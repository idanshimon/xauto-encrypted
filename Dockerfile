# Base image
FROM ubuntu:latest

# Install openssl
RUN apt-get update && apt-get install -y openssl

# Set work directory
WORKDIR /app

# Add the encrypted file
COPY main.enc /app/main.enc

# Add the entrypoint script
COPY entrypoint.sh /app/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]

