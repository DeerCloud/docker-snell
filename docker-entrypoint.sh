#!/bin/sh

launch() {
  if [ -z "$PSK" ]; then
    PSK=`hexdump -n 16 -e '4/4 "%08x" 1 "\n"' /dev/urandom`
  fi

  cat > snell.conf <<EOF
[snell-server]
listen = ${SERVER_HOST}:${SERVER_PORT}
psk = ${PSK}
obfs = ${OBFS}
EOF

  cat snell.conf
  snell-server \
    -c snell.conf \
    ${ARGS}
}


if [ -z "$@" ]; then
  launch
else
  exec "$@"
fi
