FROM alpine:latest

WORKDIR /app

RUN apk add git openssh

RUN printf '#!/bin/sh \n\n \
if [ "${1}x" = ""x ] ; then \n \
  /bin/sh \n \
else \n \
  exec -- "$@" \n \
fi \n'\
> /app/entry.sh ; \
chmod +x /app/entry.sh

ENTRYPOINT ["/app/entry.sh"]

