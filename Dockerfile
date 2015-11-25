FROM ubuntu:14.04
 RUN useradd -u 911 -U -s /bin/false abc && usermod -G users abc && mkdir -p /app /config /defaults
RUN apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold" && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN apt-get update
RUN apt-get install -y supervisor
RUN mkdir /data
### Configure Supervisor
ADD supervisord.conf /etc/supervisor/conf.d/

### Volume
VOLUME ["/data"]

### Start Supervisor
CMD /usr/bin/supervisord -n