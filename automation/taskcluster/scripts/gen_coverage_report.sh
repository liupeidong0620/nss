#!/usr/bin/env bash

source $(dirname "$0")/tools.sh

# Clone NSPR.
hg_clone https://hg.mozilla.org/projects/nspr ./nspr default

out=/home/worker/artifacts
mkdir -p $out

# Generate coverage report.
cd nss && ./mach coverage --outdir=$out ssl_gtests
