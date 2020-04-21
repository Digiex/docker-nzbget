FROM digiex/mp4:testing AS base
FROM linuxserver/nzbget:testing
MAINTAINER xzKinGzxBuRnzx

RUN \
  apk add --no-cache bash jq bc mediainfo ffmpeg && \
  sed -i -e "s#\(ScriptDir=\).*#\1/config/scripts#g" \
  /app/nzbget/share/nzbget/nzbget.conf

COPY root /
COPY --from=base /mp4 /
