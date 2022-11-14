#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d2c84a8a-1a39-420e-aa2a-57ac96f7baa3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

