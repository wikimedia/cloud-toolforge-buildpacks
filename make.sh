#!/bin/sh
# Create the builder image
pack builder create toolforge-bullseye0-builder:latest --config builder.toml "$@"
