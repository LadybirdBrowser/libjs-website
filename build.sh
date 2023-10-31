#!/bin/bash

set -eo pipefail

REPOSITORY="${TEST262_DATA_REPOSITORY:-SerenityOS/libjs-data}"

mkdir -p test262/data wasm/data

echo Downloading test results...
curl -sSLf "https://github.com/${REPOSITORY}/raw/master/test262/per-file-master.json" -o test262/data/per-file-master.json
curl -sSLf "https://github.com/${REPOSITORY}/raw/master/test262/results.json" -o test262/data/results.json
curl -sSLf "https://github.com/${REPOSITORY}/raw/master/wasm/per-file-master.json" -o wasm/data/per-file-master.json
curl -sSLf "https://github.com/${REPOSITORY}/raw/master/wasm/results.json" -o wasm/data/results.json

echo Downloading Wasm bundle...
curl -sSLf "https://github.com/${REPOSITORY}/raw/libjs-wasm/libjs.js" -o repl/libjs.js
curl -sSLf "https://github.com/${REPOSITORY}/raw/libjs-wasm/libjs.wasm" -o repl/libjs.wasm
