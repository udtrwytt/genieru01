#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8fdda6c3-e388-44ad-8eec-1e79237ad7b9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

