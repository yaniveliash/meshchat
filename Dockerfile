FROM debian:buster-slim

ENV MESH_ID="MeshChat"
ENV NODE_ID="localnode"

RUN apt update; \
    apt install -y apache2 curl wget

RUN wget https://s3.amazonaws.com/aredn/meshchat_1.02_all.deb; \
    dpkg -i meshchat_1.02_all.deb

COPY entrypoint /usr/local/bin/

EXPOSE 80
CMD ["entrypoint"]
