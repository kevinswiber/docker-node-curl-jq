FROM node:alpine
RUN apk add --update curl jq && rm -rf /var/cache/apk/*
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["jq"]
