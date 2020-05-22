FROM alpine:3.10

LABEL "com.github.actions.name"="Repository Dispatch"
LABEL "com.github.actions.description"="Send a repository dispatch notification to subscribers"
LABEL "com.github.actions.icon"="send"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.1"
LABEL repository="https://github.com/az-digital/repository-dispatch-action"
LABEL homepage="https://digital.arizona.edu/"
LABEL maintainer="Kevin Cooper <kevincooper@arizona.edu>"

RUN apk add curl

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
