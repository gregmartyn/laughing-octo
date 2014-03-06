FROM fedora

RUN yum install -y docker-registry
ADD run.sh /srv/run.sh

VOLUME ["/var/lib/docker-registry"]

EXPOSE 5000
CMD ["/srv/run.sh"]

