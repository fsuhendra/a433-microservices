#!/bin/bash

# Build image dengan nama:tag item-app:v1
# Build didasarkan pada Dockerfile yang ada
docker build -t item-app:v1 .

# Tampilkan daftar image di lokal
docker images

# Ubah nama image sesuai dengan format Docker Hub
#docker tag item-app:v1 fsuhendra/item-app:v1

# Ubah nama image sesuai dengan format Git Hub Package
docker tag item-app:v1 ghcr.io/fsuhendra/item-app:v1

# Login ke Docker Hub
#echo $PASSWORD_DOCKER_HUB | docker login -u fsuhendra --password-stdin

# Login ke Github Package
echo $PAT | docker login ghcr.io --username fsuhendra --password-stdin

# Unggah image ke Docker Hub
#docker push fsuhendra/item-app:v1

# Unggah image ke Github Package
docker push ghcr.io/fsuhendra/item-app:v1
