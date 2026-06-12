#!/bin/sh
# Railway injects $PORT for the single published HTTP port. arcade's api-server
# must bind it. ARCADE_API_PORT overrides api.port in config.yaml (viper env
# prefix ARCADE, "." -> "_"). Falls back to 8080 for local docker runs.
set -e
export ARCADE_API_PORT="${PORT:-8080}"
exec arcade --config /etc/arcade/config.yaml "$@"
