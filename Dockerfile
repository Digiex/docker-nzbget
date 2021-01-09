FROM digiex/mp4:testing AS base
FROM linuxserver/nzbget:testing
MAINTAINER xzKinGzxBuRnzx

RUN apk add --no-cache bash ffmpeg jq

COPY root /
COPY --from=base /mp4.sh /
