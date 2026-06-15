# 9: A Tale of Two Merges

In this repository, the history has split into two parallel tracks building off the initial commit:

* **Track 1 (`feature-alpha`):** Built on top of the `alpha-base` branch.
* **Track 2 (`feature-beta`):** Built on top of the `beta-base` branch.

Your job is to bring both tracks up to date. You will merge the `alpha` feature using a default **Fast-Forward (FF)** strategy, and the `beta` feature using a forced **No-Fast-Forward (`--no-ff`)** strategy. 

## Objectives

### Part 1: The Fast-Forward Track
1. Switch to the `alpha-base` branch.
2. Merge `feature-alpha` into it using the default behavior (**Fast-Forward**).
3. Notice how the history is a perfectly straight, linear line.

### Part 2: The No-Fast-Forward Track
4. Switch to the `beta-base` branch.
5. Merge `feature-beta` into it, but force a merge commit using the `--no-ff` flag. Use the commit message `"merge: integrate feature-beta"`.
6. Notice how Git forced a "bubble" or split-and-join line to preserve the context of the branch.