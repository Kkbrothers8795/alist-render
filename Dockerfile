FROM xhofe/alist:latest-ffmpeg
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/
COPY . ./data/
EXPOSE 5244:5244
EXPOSE 5246:5246
ENV PUID=0
ENV PGID=0
ENV UMASK=022
CMD [ "./alist", "server", "--no-prefix" ]
