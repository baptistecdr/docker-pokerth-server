FROM ubuntu:22.04@sha256:67211c14fa74f070d27cc59d69a7fa9aeff8e28ea118ef3babc295a0428a6d21

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
