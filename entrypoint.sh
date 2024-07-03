#!/bin/bash

# Use the static decryption key
DECRYPTION_KEY="password1!"

# Decrypt the file
openssl enc -aes-256-cbc -d -in /app/main.enc -out /app/main -k $DECRYPTION_KEY -salt

# Make the decrypted file executable
chmod +x /app/main

# Execute the decrypted file
/app/main

