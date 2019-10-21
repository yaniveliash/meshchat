# MeshChat [AREDN Project]
A dockerized version of Meshchat for fast and easy deployment<br>
https://www.trevorsbench.com/meshchat-messaging-for-mesh-networks/

# Pre-Requeiset
- Docker engine installed and running on your machine (Raspberry Pi is good too!)
- Local AREDN node
- `meshchat-api` installed on your local AREDN node

# Run
`docker run -d -p 8080:80 -e MESH_ID="MeshChat" -e NODE_ID="$LOCAL_NODE" geostant/meshchat:1.02`

> Please note that $LOCAL_NODE should be replaced with the actual node that is connected to your machine, for example: docker run -d -p 8080:80 -e MESH_ID="MeshChat" -e NODE_ID="4x5dl-gateway" geostant/meshchat:1.02

The container will be accessible by port 8080
you can change it easily by changing the port in the run command above to any other available port.

Once it's up and runnig you will need to add a service in your local AREDN node
that link to your server - the name of the service MUST match $MESH_ID.

# Default Variables
MESH_ID="MeshChat"<br>
NODE_ID="localnode"
