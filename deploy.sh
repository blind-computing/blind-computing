#!/bin/sh

set -e

MSG="$(git log -1 --format=%f)"
hugo # build site
cd public
git add .
git commit -m "Regenerate site: $MSG"
git push origin main # Deploy
cd ..
