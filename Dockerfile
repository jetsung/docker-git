FROM alpine:latest

WORKDIR /app

RUN apk add git openssh

RUN printf '#!/bin/sh \n\n \
if [ "${1}x" = ""x ] ; then \n \
  /bin/sh \n \
elif [ "${1}x" = "-D"x ] ; then \n \
  /bin/sh -c "while true; do echo hello world; sleep 360; done" \n \
else \n \
  exec -- "$@" \n \
fi \n'\
> /app/entry.sh ; \
chmod +x /app/entry.sh

ENTRYPOINT ["/app/entry.sh"]

