FROM fedora

RUN yum install -y bzip2 glibc-static
RUN yum groupinstall -y "Development tools"

RUN curl http://busybox.net/downloads/busybox-1.22.1.tar.bz2 | tar jx
ADD config busybox-1.22.1/.config
RUN cd busybox-1.22.1 && \
	make && \
	make install && \
	cd _install && \
	tar cvzf /busybox.tar.gz .

#RUN yum install -y ncurses-devel

