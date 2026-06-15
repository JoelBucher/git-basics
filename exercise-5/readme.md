# 5: The Midnight Typo

You just committed a critical bug fix, but in your sleep-deprived state, you made two mistakes:
1. You made a glaring typo in the commit message (`manger` instead of `manager`).
2. You forgot to include the updated `config.json` file which actually enables the fix.

Instead of making a second "fix typo/oops" commit, use Git's amendment powers to fix both issues in the *very last commit*.

## Objectives

1. Stage the forgotten `config.json` file.
2. Amend the previous commit to include this file **and** fix the typo in the commit message.
3. The final commit message should be: `"fix: update manager config"`