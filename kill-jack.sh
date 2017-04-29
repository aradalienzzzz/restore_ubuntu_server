# Place in /usr/bin/
# Add line to visudo ie. aclegg2011 ALL=NOPASSWD: /usr/bin/kill-jack.sh
#!/bin/bash
service=jack-server
pid=$(ps aux | grep '[j]ack-server' | awk '{print $2}')

if [ -z "$pid" ]; then
echo "$service is not running..."
exit 0
else

echo "attempting to kill $service ..."
kill -9 $pid
fi

echo "Checking to see if $service is still running..."
if (( $(ps -ef | grep -v grep| grep $service | wc -l) > 0 ))
then

  echo "$service is still running!"
else

  echo "$service is not running"
fi
