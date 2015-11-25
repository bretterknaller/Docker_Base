Pyload() {
### Checkout pyload sources
RUN git clone https://github.com/pyload/pyload.git /opt/pyload
### Add PyLoad Config Dir
ADD pyload /opt/.pyload
### Checkout pyload sources
RUN git clone https://github.com/pyload/pyload.git /opt/pyload
ADD echo "[program:pyload]" >> /etc/supervisor/conf.d/supervisord.conf
ADD echo "command=python /opt/pyload/pyLoadCore.py --configdir=/opt/.pyload --daemon" >> /etc/supervisor/conf.d/supervisord.conf
}
FROM ubuntu:14.04
RUN useradd -u 911 -U -s /bin/false abc && usermod -G users abc  
RUN apt-get update && apt-get install -y \
#Install
openssh-server \
supervisor

RUN mkdir -p \
/var/run/sshd \
/var/log/supervisor \
/data \
/app \
/config \
/defaults

### Configure Supervisor
ADD supervisord.conf /etc/supervisor/conf.d/

### Volume
VOLUME ["/data"]

### Start Supervisor

CMD ["/usr/bin/supervisord"]

Pyload