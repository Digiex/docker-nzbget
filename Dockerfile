FROM digiex/mp4:testing AS base
FROM linuxserver/nzbget:testing
MAINTAINER xzKinGzxBuRnzx

RUN \
  mkdir /mp4 && \
  apk add --no-cache bash ffmpeg jq bc mediainfo

COPY root /
COPY --from=base /mp4/* /mp4/
