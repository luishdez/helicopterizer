#!/bin/bash
#
# Backup Sync to Provider
# Author: frekele
#

set -e

timeBegin=$(date +%Y%m%d%H%M%S)

echo "Starting Sync Backup to ${STORAGE_PROVIDER^^} ..."

#Import helper.
. /scripts/core/helper.sh

#Import upload script.
. /scripts/provider/${STORAGE_PROVIDER,,}/sync/upload.sh


#Call Upload Provider.
uploadResult=$(uploadSync)


timeEnd=$(date +%Y%m%d%H%M%S)
timeDuration=$((timeEnd - timeBegin))

echo "uploadResult=$uploadResult"
echo "timeBegin=$timeBegin"
echo "timeEnd=$timeEnd"
echo "timeDuration=$timeDuration second(s)"
