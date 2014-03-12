FROM fedora

RUN yum install -y --setopt=override_install_langs=en --setopt=tsflags=nodocs varnish /usr/lib/rpm/redhat/redhat-hardened-cc1 && rm -rf /var/cache/yum
ADD run.sh /srv/run.sh

VOLUME ["/etc/varnish","/var/lib/varnish"]

EXPOSE 6081 6082
CMD ["/srv/run.sh"]

