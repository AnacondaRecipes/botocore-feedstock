#!/usr/bin/env bash
set -ex

for CHANGE in "activate" "deactivate"
do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/${CHANGE}.sh" "${PREFIX}/etc/conda/${CHANGE}.d/"
done

$PYTHON -m pip install . --no-deps --ignore-installed --no-cache-dir --no-build-isolation -vv