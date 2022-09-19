#!/usr/bin/env bash

FILES="$1"

for FILE in $FILES; do
    ls -lah $GITHUB_WORKSPACE/$FILE
    #/home/mermaidcli/node_modules/.bin/mmdc \
    #    --puppeteerConfigFile /puppeteer-config.json \
    #    --input $INPUT_FILE
done
