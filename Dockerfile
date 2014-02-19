FROM ubuntu:13.10

MAINTAINER Pepe Barbe dev@antropoide.net

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y supervisor python-pip

RUN pip install supervisor-stdout

RUN mkdir -p /var/log/supervisor
    
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
