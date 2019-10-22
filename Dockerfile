FROM debian:buster-slim

ENV MESH_ID="MeshChat"
ENV NODE_ID="localnode"

RUN apt update; \
    apt install -y apache2 curl wget

RUN wget https://s3.amazonaws.com/aredn/meshchat_1.02_all.deb; \
    dpkg -i meshchat_1.02_all.deb

RUN sed -i 's/PrivateTmp=true/PrivateTmp=false/' /lib/systemd/system/apache2.service; \
    mkdir -p /tmp/meshchat; \
    touch /tmp/meshchat/lock;\
    chmod 0777 /tmp/meshchat/lock

COPY entrypoint /usr/local/bin/

EXPOSE 80
CMD ["entrypoint"]
