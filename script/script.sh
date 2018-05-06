#!/bin/bash

remoteAddr=$(grep -Fi remote_addr=8.8.8.8 -c /var/log/nginx/old.log)

maxCount=0
status=100
count=0

while($status < 1000)
do

count=$(grep -Fi status=$err -c /var/log/nginx/old.log)
if [ $count -ge $maxCount ]
then

maxCount=$count
status=$err
status++
fi
done

symbols=$(curl -X HEAD -i http://hint.macpaw.io | grep -Fi ETag |awk '{print substr($0,8,2)}')

password=$(( $remoteAddr + $status + $symbols ))
echo password is $password
unzip -P $password /tmp/additional.zip


