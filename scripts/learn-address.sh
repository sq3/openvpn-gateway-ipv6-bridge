#!/bin/sh

action="$1"
addr="$2"

case "$action" in
    add | update)
        ip neigh replace proxy "$addr" dev tun-de-1
        ;;
    delete)
        ip neigh del proxy "$addr" dev tun-de-1
        ;;
esac