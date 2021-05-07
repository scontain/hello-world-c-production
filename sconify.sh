#!/bin/bash

docker run -it --rm \
            -v /var/run/docker.sock:/var/run/docker.sock \
            -v "$(pwd)/key":/key \
            registry.scontain.com:5050/sconecuratedimages/iexec-sconify-image:5.3.3 sconify_iexec \
            --name=c_session_name \
            --from=registry.scontain.com:5050/sconecuratedimages/iexecsgx:hello-world-c \
            --to=hello-world-c-scone-production \
            --binary-fs \
            --fs-dir=/app \
            --binary="/app/hello-world" \
            --heap="64M" \
            --dlopen="2" \
            --no-color \
            --scone-signer="/key/key.pem" \
            --verbose \
            --command="/app/hello-world"
