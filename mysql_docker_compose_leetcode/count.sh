#!/bin/bash
while true ;do
#while [ "$DO" -gt 0 ] ;do
	MYSQL_IP=$MYSQL_IP
	MYSQL_PORT=$MYSQL_PORT
	MYSQL_PASSWD=$MYSQL_PASSWD
	MYSQL_USER=$MYSQL_USER
	TIME=`date +"%Y-%m-%d %H:%M:%S"`
	count=`mysql -u${MYSQL_USER} -p${MYSQL_PASSWD}  -h${MYSQL_IP} -P${MYSQL_PORT} -e 'show status'|grep Threads_connected|awk '{print $2}'`
	echo "[${TIME}] Number of active DB connections is $count." >> /data/log
	echo "[${TIME}] Number of active DB connections is $count." >> /dev/stdout
	sleep 30
done
