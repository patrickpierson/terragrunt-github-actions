FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh py-pip"]

RUN ["/bin/sh", "-c", "pip install awscli"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
