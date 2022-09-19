#!/usr/bin/env bash

INPUT="$1"
OUTPUT="$2"
BACKGROUNDCOLOR="$3"
THEME="$4"

mkdir -p $(dirname "$GITHUB_WORKSPACE/$OUTPUT")

/home/mermaidcli/node_modules/.bin/mmdc \
    --puppeteerConfigFile /puppeteer-config.json \
    --input "$GITHUB_WORKSPACE/$INPUT" \
    --output "$GITHUB_WORKSPACE/$OUTPUT" \
    --backgroundColor "$BACKGROUNDCOLOR" \
    --theme "$THEME"

git config --local user.name 'github-actions[bot]'
git config --local user.email 'github-actions[bot]@users.noreply.github.com'
git config --local http.sslVerify false

git add --all
git commit -m "Update mermaid diagrams from $INPUT"
git push
