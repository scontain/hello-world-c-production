#!/bin/bash
echo "Genereting key suitable for enclave signing."
openssl genrsa -3 -out key.pem 3072