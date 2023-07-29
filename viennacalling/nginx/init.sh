#!/usr/local/bin/dumb-init /bin/sh

set -euo pipefail
IFS=$'\n\t'

DNS_RESOLVER=$(awk '/nameserver/ {print $2}' /etc/resolv.conf | head -1 | tr '\n' ' ')
echo "DNS Resolver: $DNS_RESOLVER"

sed -i "s/__DNS_RESOLVER__/${DNS_RESOLVER}/g" /etc/nginx/conf.d/viennacalling.conf;
