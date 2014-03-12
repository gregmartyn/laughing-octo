#!/bin/sh

set -e

source /srv/varnish.params

if [ ! -f ${VARNISH_SECRET_FILE} ] ; then
	mkdir -p $(dirname ${VARNISH_SECRET_FILE})
	uuidgen > ${VARNISH_SECRET_FILE}
	echo "Generataed a new ${VARNISH_SECRET_FILE}"
fi

/usr/sbin/varnishd \
	-F \
        -P /var/run/varnish.pid \
        -f $VARNISH_VCL_CONF \
        -a ${VARNISH_LISTEN_ADDRESS}:${VARNISH_LISTEN_PORT} \
        -T ${VARNISH_ADMIN_LISTEN_ADDRESS}:${VARNISH_ADMIN_LISTEN_PORT} \
        -t $VARNISH_TTL \
        -w ${VARNISH_MIN_THREADS},${VARNISH_MAX_THREADS},${VARNISH_THREAD_TIMEOUT} \
        -u $VARNISH_USER \
        -g $VARNISH_GROUP \
        -S $VARNISH_SECRET_FILE \
        -s $VARNISH_STORAGE \
        $DAEMON_OPTS

