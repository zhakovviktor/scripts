#!/bin/bash

awk 'BEGIN {print "Number of requests by status code"}'
cat /home/viktorsmacbook/HAproxylog/HAproxy.log | awk '{print "status code: " $6}' | sort | uniq -c | sort -nr 
printf "\n"

awk 'BEGIN {print "IP addresses"}'
cat /home/viktorsmacbook/HAproxylog/HAproxy.log | awk '{print "ip: "$1}'  | sed -e 's/:.*//' | sort -u
printf "\n" 

awk 'BEGIN {print "TOP 10 requested urls"}'
cat /home/viktorsmacbook/HAproxylog/HAproxy.log | awk '{print "by url: " $14}' | sort | uniq -c | sort -nr | head -10
printf "\n"

awk 'BEGIN {print "TOTAL number of requests: "}'
cat /home/viktorsmacbook/HAproxylog/HAproxy.log | awk '{print $14}' | sort | uniq | wc -l 
printf "\n"
