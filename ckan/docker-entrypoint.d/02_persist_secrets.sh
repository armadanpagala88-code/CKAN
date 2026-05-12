#!/bin/bash

echo "=== Persisting Fixed Secrets and Tokens for Datapusher & Uploads ==="

# 1. Set fixed JWT encode/decode secrets
ckan config-tool $CKAN_INI "api_token.jwt.encode.secret=string:TAFWL0zNyXLEC4dmc3gvcFHoOyU8wxBKnLeTVEo2mQC3Nkve"
ckan config-tool $CKAN_INI "api_token.jwt.decode.secret=string:TAFWL0zNyXLEC4dmc3gvcFHoOyU8wxBKnLeTVEo2mQC3Nkve"

# 2. Set verified persistent Datapusher API token
ckan config-tool $CKAN_INI "ckan.datapusher.api_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiJCZjJYSmFQQXdtbEVfbUxnc3M0UXk4bVB1OFhJVXFnMUdkLWtnUnVKbUFJIiwiaWF0IjoxNzc4NTU1NzYzfQ.lg1XtXbZsjuUTModUBsVN4CqwCWz1ERkBdzCnmhDL1I"

# 3. Enable file uploads permanently
ckan config-tool $CKAN_INI "ckan.uploads_enabled=True"

echo "=== Persistent Secrets and Tokens Configured Successfully ==="
