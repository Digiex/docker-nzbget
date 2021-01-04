FROM digiex/mp4:latest AS base
FROM linuxserver/nzbget:latest
MAINTAINER xzKinGzxBuRnzx

RUN \
  mkdir /mp4 && \
  apk add --no-cache bash ffmpeg jq bc mediainfo

COPY root /
COPY --from=base /mp4/* /mp4/
