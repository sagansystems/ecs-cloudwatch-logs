#!/bin/sh
set -x

EC2_INSTANCE_ID=`curl -m 20 http://169.254.169.254/latest/meta-data/instance-id`

sed -i "s/EC2_INSTANCE_ID/${EC2_INSTANCE_ID}/" /etc/rsyslog.conf

/usr/local/bin/supervisord