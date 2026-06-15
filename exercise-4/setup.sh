#!/bin/bash

mkdir -p src/utils
echo "console.log('Hello World');" > src/index.js
echo "function helper() {}" > src/utils/helper.js

echo "macOS metadata" > .DS_Store
git add src/index.js src/utils/helper.js .DS_Store
git commit -m "Initial commit with project structure"

echo "some local debug info" > debug.log
echo "more macOS metadata" > src/utils/.DS_Store