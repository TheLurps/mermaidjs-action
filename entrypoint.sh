#!/usr/bin/env bash

FILE_PATTERN="$1"

for INPUT_FILE in $(find /github/workspace -name $FILE_PATTERN); do
    /home/mermaidcli/node_modules/.bin/mmdc \
        --puppeteerConfigFile /puppeteer-config.json \
        --input $INPUT_FILE
done
