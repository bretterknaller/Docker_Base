FROM phusion/baseimage:0.9.17
ENV DEBIAN_FRONTEND="noninteractive" HOME="/root" TERM="screen" 
RUN useradd -u 911 -U -s /bin/false abc && usermod -G users abc && mkdir -p /app /config /defaults
RUN apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold" && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN apt-get install -y supervisor
RUN mkdir /data
### Configure Supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

### Volume
VOLUME ["/data"]

### Start Supervisor
CMD ["/usr/bin/supervisord","-n"]