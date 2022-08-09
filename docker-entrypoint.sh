#!/bin/sh
set -e

cat /tmpl/envoy-tmplate.yaml | envsubst > /etc/envoy.yaml

exec /usr/local/bin/envoy -c /etc/envoy.yaml
