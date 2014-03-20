FROM ubuntu:13.10

MAINTAINER Pepe Barbe dev@antropoide.net

RUN apt-get update && \
    apt-get install -y supervisor python-pip && \
    pip install supervisor-stdout && \
    mkdir -p /var/log/supervisor
    
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
