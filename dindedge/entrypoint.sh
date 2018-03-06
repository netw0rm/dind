#!/bin/sh
rm -rf /var/run/docker.pid
exec dockerd-entrypoint.sh $@ ${DOCKER_OPTS}
