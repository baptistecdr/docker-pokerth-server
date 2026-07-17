FROM ubuntu:26.04@sha256:3131b4cc82a783df6c9df078f86e01819a13594b865c2cad47bd1bca2b7063bb

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
