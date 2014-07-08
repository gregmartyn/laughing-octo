#!/bin/sh

cat <<EOM
FROM fedora:latest

RUN yum install -y xterm
#RUN yum update -y && yum clean all

RUN useradd -m -u $(id -u ${USER}) -G wheel ${USER} && \
	sed -ri 's/^(%wheel.*)(ALL)$/\1NOPASSWD: \2/' /etc/sudoers


CMD bash -l
USER ${USER}
ENV HOME ${HOME}
WORKDIR ${HOME}
EOM

