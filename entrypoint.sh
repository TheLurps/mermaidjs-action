#!/usr/bin/env bash

INPUT="$1"

echo "$GITHUB_WORKSPACE/$FILE"
cat "$GITHUB_WORKSPACE/$FILE"

/home/mermaidcli/node_modules/.bin/mmdc \
    --puppeteerConfigFile /puppeteer-config.json \
    --input "$GITHUB_WORKSPACE/$INPUT"
