FROM alpine:3.11

RUN apk add --no-cache python3

ADD entrypoint.sh /opt/entrypoint.sh
ADD src/ShellyForHassProxy.py /opt/proxy.py

ENTRYPOINT ["/opt/entrypoint.sh"]