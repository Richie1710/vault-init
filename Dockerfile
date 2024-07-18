# Create an Allpine impage with vault and and awscli installed
# Use the official Alpine as a base image
FROM alpine:latest

# Install necessary packages
RUN apk add --no-cache \
    curl \
    bash \
    python3 \
    py3-pip \
    jq \
    vault

# Install AWS CLI
RUN pip3 install --upgrade awscli

# Verify installations
RUN vault --version && aws --version

# Setze den Entry Point auf sh
ENTRYPOINT ["/bin/sh", "-c"]
