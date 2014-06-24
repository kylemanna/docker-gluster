FROM ubuntu:14.04
MAINTAINER Kyle Manna <kyle@kylemanna.com>

#RUN add-apt-repository ppa:semiosis/ubuntu-glusterfs-3.5
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 66AA1FADD2E62A0715975EA3FA04D393774BAC4D
RUN echo "deb http://ppa.launchpad.net/semiosis/ubuntu-glusterfs-3.5/ubuntu trusty main" > /etc/apt/sources.list.d/gluster.list
RUN apt-get update
#RUN apt-get install -y glusterfs-client glusterfs-server supervisor
RUN apt-get install -y glusterfs-client glusterfs-server

#ADD etc/ /etc/
ADD bin/ /usr/local/bin/
RUN chmod a+x /usr/local/bin/*

EXPOSE 111 839 2049 24007 38465 38466 38468 38469 49152 49153 49154 49156 49157 49158 49159 49160 49161 49162 49528

#CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf", "--nodaemon", "--loglevel=debug"]
