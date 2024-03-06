FROM ubuntu:22.04@sha256:77906da86b60585ce12215807090eb327e7386c8fafb5402369e421f44eff17e

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
