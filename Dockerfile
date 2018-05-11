FROM ubuntu:16.04
ENV container docker
# Don't start any optional services except for the few we need.
RUN find /etc/systemd/system \
         /lib/systemd/system \
         -path '*.wants/*' \
         -not -name '*journald*' \
         -not -name '*systemd-tmpfiles*' \
         -not -name '*systemd-user-sessions*' \
         -exec rm \{} \;
RUN systemctl set-default multi-user.target
CMD ["/sbin/init"]


RUN apt-get update && \
    apt-get -y upgrade && \
    apt install -y  apt-utils
RUN apt-get -y install git curl wget nano apache2
RUN apt install -y ruby ruby-dev build-essential make
RUN ruby -v
RUN gem update --system
RUN gem install bundler jekyll-feed minima
RUN jekyll -v

WORKDIR /host
