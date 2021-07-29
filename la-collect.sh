#!/bin/sh
LOGFILE="/tmp/loadavg.log"

echo "================= $(date) "=================" >> $LOGFILE
cat /proc/loadavg >> $LOGFILE
cat /proc/stat >> $LOGFILE
echo "------------------ top ---------------------" >> $LOGFILE
top -H -n 4 -b >> $LOGFILE
echo "------------------ ps ----------------------" >> $LOGFILE
ps -efTww >> $LOGFILE
