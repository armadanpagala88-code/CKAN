#!/bin/bash

# Custom entrypoint script that replaces the hardcoded database check
# CKAN prerun scripts already handle database initialization correctly

echo "=== Custom CKAN Initialization Script ==="
echo "Skipping redundant database check (already done by prerun scripts)"

# Run the datapusher setup
if [ -f /docker-entrypoint.d/01_setup_datapusher.sh ]; then
    echo "Running datapusher setup..."
    source /docker-entrypoint.d/01_setup_datapusher.sh
fi

echo "CKAN is ready to start!"
