#!/bin/bash

# set Grafana configuration environment variables
export GF_SERVER_ROOT_URL="%(protocol)s://%(domain)s:/service/${SERVICE_ID}"
export GF_SERVER_HTTP_PORT=6060
export GF_SERVER_SERVE_FROM_SUB_PATH=true
export GF_AUTH_BASIC_ENABLED=false

[ ! -f /var/lib/grafana/grafana.db ] && cp /mocked.db /var/lib/grafana/grafana.db ; /run.sh
