FROM fedora
RUN yum install --setopt=override_install_langs=en --setopt=tsflags=nodocs --setopt=keepcache=0 -y mongodb-server && mkdir -p /data/db && rm -rf /var/cache/yum
EXPOSE 27017 28017
VOLUME ["/data/db"]
CMD "mongod"
