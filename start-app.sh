#!/bin/bash

#UPDATE AND UPGRADE LINUX
echo "Updating Linux..."
apt-get update && apt-get upgrade -y
echo "Update completed!"

#CREATE DIRECTORIES
echo "Creating directories..."
mkdir appX docker
echo "Directories created!"

#UNRAR FILES
apt-get install unrar -y

#COPY FILES
echo "Copying files..."
unrar x app-web.rar appX/
cp docker-compose.yml docker/
rm app-web.rar
rm docker-compose.yml
cd docker/
echo "Files copied!"

#START APPLICATION
echo "Starting application..."
docker compose up -d
echo "Application working! Enjoy!"
