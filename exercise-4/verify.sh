#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

PASSED_OBJECTIVES=0
TOTAL_OBJECTIVES=5

echo "🔍 Running verification script..."
echo "--------------------------------"

# Objective 1: Check if .gitignore file exists
if [ -f ".gitignore" ]; then
    echo -e "${GREEN}[✔] Pass:${NC} .gitignore file was created."
    ((PASSED_OBJECTIVES++))
else
    echo -e "${RED}[✘] Fail:${NC} .gitignore file is missing."
fi

# Objective 2: Check if .gitignore rules are correct
if grep -q "\.DS_Store" .gitignore && grep -q "\.log" .gitignore; then
    echo -e "${GREEN}[✔] Pass:${NC} .gitignore correctly targets .DS_Store and .log files."
    ((PASSED_OBJECTIVES++))
else
    echo -e "${RED}[✘] Fail:${NC} .gitignore is missing rules for .DS_Store or *.log."
fi

# Objective 3: Ensure files were NOT deleted from the actual computer hard drive
if [ -f ".DS_Store" ] && [ -f "debug.log" ]; then
    echo -e "${GREEN}[✔] Pass:${NC} Physical files were preserved on disk (not accidentally deleted)."
    ((PASSED_OBJECTIVES++))
else
    echo -e "${RED}[✘] Fail:${NC} It looks like you deleted .DS_Store or debug.log from the disk entirely. Use 'git rm --cached' next time!"
fi

# Objective 4: Check if .DS_Store was successfully removed from Git tracking
if git ls-files | grep -q "\.DS_Store"; then
    echo -e "${RED}[✘] Fail:${NC} .DS_Store is still being tracked by Git."
else
    echo -e "${GREEN}[✔] Pass:${NC} .DS_Store was successfully untracked from Git."
    ((PASSED_OBJECTIVES++))
fi

# Objective 5: Check the latest commit message
LATEST_COMMIT_MSG=$(git log -1 --pretty=%B 2>/dev/null)
EXPECTED_MSG="chore: add gitignore and untrack system clutter"

if [ "$LATEST_COMMIT_MSG" == "$EXPECTED_MSG" ]; then
    echo -e "${GREEN}[✔] Pass:${NC} Latest commit message matches requirements exactly."
    ((PASSED_OBJECTIVES++))
else
    echo -e "${RED}[✘] Fail:${NC} Expected commit message '$EXPECTED_MSG', but found '$LATEST_COMMIT_MSG'."
fi

# Final Score
echo "--------------------------------"
if [ $PASSED_OBJECTIVES -eq $TOTAL_OBJECTIVES ]; then
    echo -e "${GREEN}🎉 Success! You passed $PASSED_OBJECTIVES/$TOTAL_OBJECTIVES objectives. Exercise complete!${NC}"
    exit 0
else
    echo -e "${RED}❌ Keep trying! You passed $PASSED_OBJECTIVES/$TOTAL_OBJECTIVES objectives.${NC}"
    exit 1
fi