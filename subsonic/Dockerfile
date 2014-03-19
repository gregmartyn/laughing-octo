FROM vbatts/slackware
MAINTAINER Vincent Batts <vbatts@slackware.com>

RUN slackpkg install -batch=on -default_answer=y cxxlibs glib2 libffi
RUN wget http://www.slackware.com/~alien/slackbuilds/openjdk/pkg64/14.1/openjre-7u51_b31-x86_64-1alien.txz && installpkg openjre-7u51_b31-x86_64-1alien.txz && rm openjre-7u51_b31-x86_64-1alien.txz
RUN cd /tmp/ && wget http://downloads.sourceforge.net/project/subsonic/subsonic/4.9/subsonic-4.9-standalone.tar.gz && tar xf subsonic-4.9-standalone.tar.gz && rm subsonic-4.9-standalone.tar.gz

ADD start.sh /start.sh

EXPOSE 4040
VOLUME ["/data", "/music"]
CMD ["/start.sh"]

# docker run -i -t -v $(pwd)/Music:/music -v $(pwd)/subsonic:/data -P vbatts/subsonic
