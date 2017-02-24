#!/bin/sh

# Create config from env vars
cat > /syncserver/syncserver.ini <<EOF
[server:main]
use = egg:gunicorn
host = 0.0.0.0
port = 5000
workers = 1
timeout = 30

[app:main]
use = egg:syncserver

[syncserver]
public_url = ${URL}
sqluri = sqlite:////ff-sync/syncserver.db
secret = ${SECRET}
allow_new_users = false
EOF

cd syncserver

# Run syncserver
make build
