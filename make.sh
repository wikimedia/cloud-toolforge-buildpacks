#!/bin/sh
# Create the builder image
pack builder create toolforge-buster0-builder:latest --config builder.toml "$@"
