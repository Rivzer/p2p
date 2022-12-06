#!/bin/bash
apt update -y
apt install docker.io -y
docker pull peer2profit/peer2profit_linux
echo "Type your peer2profit email"
read email
export P2P_EMAIL=$email
docker rm -f peer2profit || true && docker run -d --restart always \
        -e P2P_EMAIL=$email \
        --name peer2profit \
        peer2profit/peer2profit_linux:latest 
echo "Done! Thank you for using my script."
