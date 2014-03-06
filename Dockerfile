FROM fedora

RUN yum install -y docker-registry
ADD run.sh /srv/run.sh

EXPOSE 5000
CMD "/srv/run.sh"

