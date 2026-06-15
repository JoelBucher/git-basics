#!/bin/bash

echo '{"timeout": 30}' > config.json
echo "class ConnectionManager: pass" > manager.py
git add config.json manager.py
git commit -m "chore: initial commit"

echo "class ConnectionManager: def connect(self): pass" > manager.py
echo '{"timeout": 60}' > config.json

git add manager.py
git commit -m "fix: update connection manger configuration"