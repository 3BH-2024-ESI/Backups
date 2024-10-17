#!/bin/bash

BASE="base"
USUARIO="respaldos"
PASSWORD="respaldos"
DESTINO=$(date +"%Y-%m-%d__%H-%M-%S.sql.gz")



mysqldump -u $USUARIO -p$PASSWORD $BASE |  gzip  > $DESTINO

scp -P 6666 -i /root/.ssh/id_rsa $DESTINO respaldos@192.168.1.97:/home/respaldos/

rm -rf $DESTINO
