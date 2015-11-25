FROM ubuntu:14.04
 RUN useradd -u 911 -U -s /bin/false abc && usermod -G users abc && mkdir -p /app /config /defaults
RUN apt-get update && apt-get install -y openssh-server supervisor
RUN mkdir -p /var/run/sshd /var/log/supervisor
RUN mkdir /data
### Configure Supervisor
ADD supervisord.conf /etc/supervisor/conf.d/

### Volume
VOLUME ["/data"]

### Start Supervisor

CMD ["/usr/bin/supervisord"]