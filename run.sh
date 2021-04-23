#!/bin/bash
set -e
source sgx_device.sh

determine_sgx_device &&\
echo "Run sconified image..." && \
docker run -it --rm "${MOUNT_SGXDEVICE}" \
-eSCONE_VERSION=1 \
-eSCONE_MODE=hw \
-eSCONE_LOG="4" \
hello-world-c-scone-production /app/hello-world
