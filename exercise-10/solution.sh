#!/bin/bash

git reflog

LOST_COMMIT_HASH=$(git reflog | grep "implement payment gateway" | head -n 1 | awk '{print $1}')

git show $LOST_COMMIT_HASH

git show $LOST_COMMIT_HASH:app.py | grep "API_KEY" | cut -d"'" -f2 > recovered_key.txt

echo "Success! Key recovered:"
cat recovered_key.txt