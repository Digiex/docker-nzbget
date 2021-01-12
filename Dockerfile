FROM digiex/mp4:latest AS base
FROM linuxserver/nzbget:latest
MAINTAINER xzKinGzxBuRnzx

ENV NVIDIA_DRIVER_CAPABILITIES="compute,video,utility"

RUN apk add --no-cache bash ffmpeg jq

COPY root /
COPY --from=base /mp4.sh /
