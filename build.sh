#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0);pwd)
WORK_DIR=~/work

echo Create tar ...
(cd ${WORK_DIR}; tar --exclude .git zcvf $CURRENT_DIR/2.4/alpine/httpd.tar.gz httpd > /dev/null 2>&1)

echo Build ...
(cd 2.4/alpine; docker-compose build)
