#!/bin/bash

varnishd \
-f $VARNISH_VCL_CONF \
-a ${VARNISH_LISTEN_ADDRESS}:${VARNISH_LISTEN_PORT} \
-T ${VARNISH_ADMIN_LISTEN_ADDRESS}:${VARNISH_ADMIN_LISTEN_PORT} \
-t $VARNISH_TTL \
-s $VARNISH_STORAGE \
$VARNISH_DAEMON_OPTIONS

/usr/bin/$VARNISH_CONTAINER_LOG_TYPE

# -F $VARNISHNCSA_LOG_OPTIONS
