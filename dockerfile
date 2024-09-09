FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3-pygame && \
    rm -rf /var/lib/apt/lists/*
