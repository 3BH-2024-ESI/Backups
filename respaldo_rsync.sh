#!/bin/bash

USUARIO_RESPALDOS="respaldos"
SERVIDOR_RESPALDOS="192.168.1.97"
ORIGEN="/etc"
DESTINO="/home/respaldos/copia_etc"
rsync -av -e 'ssh -p 6666 -i .ssh/id_rsa' \
	$ORIGEN $USUARIO_RESPALDOS@$SERVIDOR_RESPALDOS:$DESTINO
