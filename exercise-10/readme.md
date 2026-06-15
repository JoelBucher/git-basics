# 10: The Leaked API Key

Your colleague Bob was debugging an integration late last night. In his haste, he hardcoded a live production Stripe API key into the source code and committed it directly to the branch. 

If this branch gets pushed to GitHub, the key will be compromised instantly. Merely changing the code in a *new* commit isn't enough, because the key would still exist in the Git history. You need to use `git` to completely erase Bob's commit from the history, then safely store the API key where it belongs (in a `.env` file that is ignored by Git).

## Objectives

1. Find the leaked API key.
2. Use `git` to completely wipe Bob's commit from the history and your working directory (**Hint:** a `--hard` reset will destroy the commit and the file changes).
3. Create a `.env` file and paste the API key inside it (`STRIPE_API_KEY=sk_prod_12345`).
4. Ensure `.env` is added to a `.gitignore` file so it can never be tracked by accident.
5. Commit the .gitignore file with the commit message `chore: added .env file`