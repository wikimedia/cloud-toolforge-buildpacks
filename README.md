Toolforge buildpacks
====================

This repository contains [buildpacks](https://buildpacks.io/) for the
Toolforge project.

See the [push-to-deploy](https://wikitech.wikimedia.org/wiki/Wikimedia_Cloud_Services_team/EnhancementProposals/Toolforge_push_to_deploy)
project for some more details.

# Quickstart

You'll need to [install `pack`](https://buildpacks.io/docs/tools/pack/cli/install/)
first.

```bash
# Create the builder image
./make.sh
# Change directories to your tool
cd ../my-cool-tool
pack build my-cool-tool --builder docker-registry.tools.wmflabs.org/toolforge-buster0-builder
docker run my-cool-tool
```

pack will try to always pull the latest build/run images from the registry. If
you want to test against locally modified images, pass `--pull-policy never`
to make.sh.

# License

GPL v3, or any later version. See COPYING for more details.
