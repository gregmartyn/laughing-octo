FROM fedora

RUN yum install -y --setopt=override_install_langs=en --setopt=tsflags=nodocs docker-registry && rm -rf /var/cache/yum
ADD run.sh /srv/run.sh

VOLUME ["/var/lib/docker-registry"]

EXPOSE 5000
CMD ["/srv/run.sh"]

