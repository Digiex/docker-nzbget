FROM digiex/mp4:latest AS base
FROM linuxserver/nzbget:latest
MAINTAINER xzKinGzxBuRnzx

RUN \
  apk add --no-cache bash ffmpeg && \
  sed -i -e "s#\(ScriptDir=\).*#\1/config/scripts#g" \
  /app/nzbget/share/nzbget/nzbget.conf

COPY --from=base /mp4 /
COPY root /
