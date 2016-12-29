#!/bin/bash

if [[ ! -d "/var/log/kolla/opendaylight" ]]; then
    mkdir -p /var/log/kolla/opendaylight
fi
if [[ $(stat -c %a /var/log/kolla/opendaylight) != "755" ]]; then
    chmod 755 /var/log/kolla/opendaylight
fi

. /usr/local/bin/kolla_opendaylight_extend_start