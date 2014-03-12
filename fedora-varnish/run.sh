#!/bin/sh

set -e

source /etc/varnish/varnish.params

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

