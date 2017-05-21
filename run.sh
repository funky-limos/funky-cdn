#!/bin/bash

for file in /etc/nginx/conf.d/resizer.conf; do
  envsubst '${ASSET_LOCATION}' < $file > $file.done
  cat $file.done > $file
done

nginx -g "daemon off;"
