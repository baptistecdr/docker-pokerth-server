FROM ubuntu:24.04@sha256:9cbed754112939e914291337b5e554b07ad7c392491dba6daf25eef1332a22e8

ARG PUID=${PUID:-10000}
ARG PGID=${PGID:-10000}

COPY root /

RUN apt update && apt upgrade -y && apt install -y pokerth-server

RUN groupadd --gid $PGID pokerth && \
    useradd --uid $PUID --gid $PGID -s /usr/bin/bash -d /pokerth pokerth && \
    chown -R $PUID:$PGID /pokerth

EXPOSE 7234

USER pokerth

WORKDIR /pokerth

ENTRYPOINT ["/entrypoint.sh"]
