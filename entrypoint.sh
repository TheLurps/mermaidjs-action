#!/usr/bin/env bash

./node_modules/.bin/mmdc \
    --puppeteerConfigFile /puppeteer-config.json \
    --input $1
