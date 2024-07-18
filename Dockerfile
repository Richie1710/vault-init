# Create an Allpine impage with vault and and awscli installed
# Use the official Alpine as a base image
FROM alpine:latest

# Install necessary packages
RUN apk add --no-cache vault bash
# Verify installations
RUN vault --version && aws --version

# Setze den Entry Point auf sh
ENTRYPOINT ["/bin/sh", "-c"]
