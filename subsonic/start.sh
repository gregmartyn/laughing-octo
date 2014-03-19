#! /bin/sh

set -e

export JAVA_HOME=/usr/lib64/java/jre

mkdir -p /data /music

sh /tmp/subsonic.sh \
	--home=/data \
	--default-music-folder=/music \
	--max-memory=${MAX_MEMORY:-100} \
	--context-path=${CONTEXT_PATH:-/}
tail -f /data/*.log

