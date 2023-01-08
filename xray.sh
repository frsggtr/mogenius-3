#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8dd031f7-216d-46bf-b755-96c80df05ae3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

