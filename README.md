This a demonstration of a one-step transformation of C native image (`registry.scontain.com:5050/sconecuratedimages/iexecsgx:hello-world-c`) to SCONE-enabled image (`hello-world-c-scone`) that runs in production mode.

Execute `sconify.sh` to sconify the native C image.
Sconification into productive mode requires the presents of kye that is suitable for signing SGX binary.
The key is provided with `--scone-signer="/key/key.pem"` option. After the successful signing process key will be removed from the final image.
Key was generated with `/key/genkey.sh` according to SGX requirements.


`sconify.sh` leverages `sconify_image` container that takes an input native image `--from` (`--from=registry.scontain.com:5050/sconecuratedimages/iexecsgx:hello-world-c`) and transform it to `--to` (`--to=hello-world-c-scone \`).
All other option related to the `sconify_image` tool could be obtained by running:
```
docker run -it --rm  registry.scontain.com:5050/sconecuratedimages/sconecli:sconify-image-latest
```

IMPORTANT:
This demonstration is only possible to run on the platrofrm that supports FLC with DCAP driver.

To run the sconified image in production mode, execute `run.sh`
