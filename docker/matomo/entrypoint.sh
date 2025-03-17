#!/bin/bash
set -euo pipefail

# Run the original entrypoint
/original-entrypoint.sh

# add symlink to config, not available before mounting
ln -sf /config/config.ini.php /var/www/html/config/config.ini.php

exec "$@"
