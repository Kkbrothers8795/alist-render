FROM xhofe/alist:latest-ffmpeg
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244:5244
ENV PUID=0
ENV PGID=0
ENV UMASK=022
CMD [ "./alist", "server", "--no-prefix" ]
