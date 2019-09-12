FROM alpine

LABEL "version"="0.0.1"
LABEL "repository"="https://github.com/stefan-enway/webhook-rocketchat"
LABEL "homepage"="https://github.com/stefan-enway/webhook-rocketchat"
LABEL "maintainer"="Stefan Sels"
LABEL "com.github.actions.name"="Webhook RocketChat"
LABEL "com.github.actions.description"="Posts data to an RocketChat webhook"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="gray-dark"

# Install curl
RUN apk add --no-cache curl python

# Add the entry point
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Load the entry point
ENTRYPOINT ["/entrypoint.sh"]
