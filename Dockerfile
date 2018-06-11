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

RUN apt-get update ; \
    apt-get -y install git curl wget nano apache2 sudo; \ 
    apt install -y ruby ruby-dev build-essential; \ 
    apt-get -y upgrade
RUN sudo gem update --system && \	
	sudo gem install bundler &&\
	sudo gem install jekyll minima 

