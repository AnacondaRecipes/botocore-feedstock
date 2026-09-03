#!/usr/bin/env bash
set -ex

# Set the REQUESTS_CA_BUNDLE environment variable to the path of the cacert.pem file
# Needed for the botocore package to use the correct CA bundle.
export REQUESTS_CA_BUNDLE=$CONDA_PREFIX/ssl/cacert.pem