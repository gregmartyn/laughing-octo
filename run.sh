#!/bin/bash
   
if [[ -z "$GUNICORN_WORKERS" ]] ; then
	GUNICORN_WORKERS=4
fi 
 
if [[ -z "$REGISTRY_ADDRESS" ]] ; then
	REGISTRY_ADDRESS=0.0.0.0
fi

if [[ -z "$REGISTRY_PORT" ]] ; then
	REGISTRY_PORT=5000
fi
 
if [[ -z "$DOCKER_REGISTRY_CONFIG" ]] ; then
	export DOCKER_REGISTRY_CONFIG=/etc/docker-registry.yml
fi

if [[ -z "$SETTINGS_FLAVOR" ]] ; then
	export SETTINGS_FLAVOR=local
fi

cd /usr/lib/python2.7/site-packages/docker-registry
/usr/bin/gunicorn --access-logfile - --debug --max-requests 100 --graceful-timeout 3600 -t 3600 -k gevent -b ${REGISTRY_ADDRESS}:${REGISTRY_PORT} -w $GUNICORN_WORKERS wsgi:application
