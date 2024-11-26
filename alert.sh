#!/bin/bash
df | awk '$6 == "/" {gsub("%", "", $5); if ($5 > 50) print "ALERT"}' >> alerts.log
# check out the "/" and if free storage < 50% then print "ALERT" to the log file
# can put the script in crontab or make it loop depending on the task
