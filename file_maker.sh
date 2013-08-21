#!/bin/bash

logfile=/tmp/file_maker.out
touch /home/morgan/Testing/file_maker/script_has_been_called

case $1 in
	start)
		echo "Starting service" > $logfile
		echo $$ > /var/run/file_maker_c.pid
		exec /home/morgan/Testing/file_maker/file_maker_c \ 
		     2>&1 1>$logfile
		;;
	stop)
		kill `cat /var/run/file_maker_c.pid`;;
	*)
		echo "usage: file_maker.sh {start|stop}";;
esac
exit 0
