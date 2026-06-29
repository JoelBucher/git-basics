# 10: The Phantom Ledger

You committed a live production API key into the codebase. To patch the leak quickly, you ran a hard reset (`git reset --hard HEAD~1`) and force-pushed to the remote repository. 

Crisis averted—until your colleague drops a bomb: *That was our only copy of that legacy vendor key, and it takes 3 weeks to generate a new one. Staging is down until you get it back.*

The commit is gone from `git log`, the branch is rewritten, and your local workspace is wiped clean. However, Git secretly keeps a local record of your physical movements—a *phantom ledger* under the hood. Your mission is to find that lost commit and recover the key.

### Objectives

1. Locate the hidden ledger of your local `HEAD` movements.
2. Find the hash of the lost commit that contained the API key.
3. Extract the key and save it to a new file named `recovered_key.txt`.