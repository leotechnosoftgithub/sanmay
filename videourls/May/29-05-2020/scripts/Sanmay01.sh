#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/videoips1  http://18.207.24.43/videoips1
for i in `cat ./videourls/May/29-05-2020/urls/01`;do ip=`shuf -n 1 ./ips/videoips1`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./alpha9.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job Sanmay01.sh completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
