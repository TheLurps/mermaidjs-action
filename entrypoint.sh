#!/usr/bin/env bash

INPUT="$1"
OUTPUT="$2"
BACKGROUNDCOLOR="$3"
THEME="$4"

mkdir -p "$GITHUB_WORKSPACE/$INPUT"

/home/mermaidcli/node_modules/.bin/mmdc \
    --puppeteerConfigFile /puppeteer-config.json \
    --input "$GITHUB_WORKSPACE/$INPUT" \
    --output "$GITHUB_WORKSPACE/$OUTPUT" \
    --backgroundColor "$BACKGROUNDCOLOR" \
    --theme "$THEME"
