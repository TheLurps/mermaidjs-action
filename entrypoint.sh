#!/usr/bin/env bash

FILE_PATTERN="$1"

echo $GITHUB_WORKSPACE
echo $FILE_PATTERN
for INPUT_FILE in $(find $GITHUB_WORKSPACE -name $FILE_PATTERN); do
    echo $INPUT_FILE
    #/home/mermaidcli/node_modules/.bin/mmdc \
    #    --puppeteerConfigFile /puppeteer-config.json \
    #    --input $INPUT_FILE
done
