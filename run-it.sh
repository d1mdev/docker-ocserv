docker run --name openconnect\
    --restart unless-stopped\
    -v /etc/ocserv:/etc/ocserv\
    -p 8443:443\
    --privileged\
    --sysctl net.ipv4.ip_forward=1\
    --cap-add NET_ADMIN\
    --security-opt no-new-privileges\
    -d openconnect:1.2.4
