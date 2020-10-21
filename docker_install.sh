#!/bin/sh
if ! command docker version --format '{{.Server.Version}}' >/dev/null
then
echo nie ma dockera
fi
echo Docker zainstalowany