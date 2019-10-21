# MeshChat [AREDN Project]
A dockerized version of Meshchat for fast and easy deployment

# Pre-Requeiset
Docker engine installed and running on your machine (Raspberry Pi is good too!)

# Run
docker run -d -p 8080:80 -e MESH_ID="MeshChat" -e NODE_ID="$LOCAL_NODE" geostant/meshchat:1.02

> Please note that $LOCAL_NODE should be replaced with the actual node that is connected to your machine, for example: docker run -d -p 8080:80 -e MESH_ID="MeshChat" -e NODE_ID="4x5dl-gateway" geostant/meshchat:1.02

# Default Variables
MESH_ID="MeshChat"<br>
NODE_ID="localnode"
