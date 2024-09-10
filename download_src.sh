#!/bin/bash

HTTP_VERSION=2.4.55
WORK_DIR=~/work

mkdir -p ${WORK_DIR}
rm -f ${WORK_DIR}/httpd.tar.gz > /dev/null 2>&1
rm -f ${WORK_DIR}/httpd > /dev/null 2>&1

wget -O ${WORK_DIR}/httpd.tar.gz https://downloads.apache.org/httpd/httpd-${HTTP_VERSION}.tar.gz

mkdir -p ${WORK_DIR}/httpd
tar xvf ${WORK_DIR}/httpd.tar.gz -C ${WORK_DIR}/httpd --strip-components 1
