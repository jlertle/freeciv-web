#!/bin/bash
# Startup script for running all processes of Freeciv-web

echo "Starting up Freeciv-web: nginx, resin, publite2, freeciv-proxy."

# 1. nginx
echo "Starting nginx first. Please enter root password:"

if [ "$(pidof nginx)" ] 
then
  echo "nginx running!"
else
  sudo /usr/local/nginx/sbin/nginx && \
  echo "nginx started!" && \
  sleep 1 
fi


# 2. Resin
echo "Starting up Resin" && \
~/freeciv-build/resin-4.0.36/bin/resin.sh start && \
echo "Resin started" && \
sleep 4 && \

#3. publite2
echo "Starting publite2" && \
cd ~/freeciv-build/freeciv-web/publite2/ && \
sh run.sh && \
echo "Publite2 started" && \

#4. freeciv-proxy
echo "Starting freeciv-proxy" && \
cd  ~/freeciv-build/freeciv-web/freeciv-proxy/ && \
sh run.sh & \
echo "freeciv-proxy started" &&\
echo "Will sleep for 30 seconds, then do a status test..." && \
sleep 30 && \
sh ./status-freeciv-web.sh



