apt update -y;

apt install docker.io;

docker pull peer2profit/peer2profit_linux,

read email;

export P2P_EMAIL=$email; 

docker rm -f peer2profit || true && docker run -d --restart always \
        -e P2P_EMAIL=$P2P_EMAIL \
        --name peer2profit \
        peer2profit/peer2profit_linux:latest 