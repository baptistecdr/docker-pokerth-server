FROM ubuntu:26.04@sha256:2e27ff302056b2b96df4a524ce48e72c595abfe3fd7a3d923adf8e782e16896f

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
