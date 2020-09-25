# About

-   This image contains the meetecho janus webrtc gateway  ([https://github.com/meetecho/janus-gateway](https://github.com/meetecho/janus-gateway))

-   It uses the google stun server

-   This repository is published here: [https://hub.docker.com/r/efacilitation/docker-janus-webrtc-gateway/
](https://hub.docker.com/r/efacilitation/docker-janus-webrtc-gateway/)

- Ubuntu 18.04 (Base on AWS)

##Build
```docker build -t janus .```

## Ports

| Port   | Description   |
|--------|---------------|
| 80     | HTML-Examples |
| 8088   | RESTful API   |
| 8188   | WebSocket API |

## Environment variables

No environment variables are needed for this image.

## Linked Containers

This container does not need any container linked to.

## Run

/opt/janus/bin/janus --stun-server=stun.l.google.com:19302
