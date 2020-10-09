#!/bin/sh
# Create the builder image
pack create-builder docker-registry.tools.wmflabs.org/toolforge-buster0-builder:latest --config builder.toml "$@"
