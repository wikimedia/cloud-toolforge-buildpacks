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
pack build my-cool-tool --builder toolforge-buster0-builder
docker run my-cool-tool
```

pack will try to always pull the latest build/run images from the registry. If
you want to test against locally modified images, pass `--pull-policy never`
to make.sh.

# Debugging

If you want to debug why your app is not being built as you expect, enabling
the verbose output might help see what buildpacks are being chosen to build
your tool and their output:
```
pack build my-cool-tool --verbose --builder toolforge-buster0-builder
```

# License

GPL v3, or any later version. See COPYING for more details.
