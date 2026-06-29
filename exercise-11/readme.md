# 11: Keep it Linear

You have been working on the `feature/analytics` branch and just finished up your code. Meanwhile, your colleague pushed a critical security fix directly to the `main` branch. 

You need to bring your analytics branch up to date with `main` before submitting a Pull Request. However, your team has a strict policy against "merge bubbles" and unnecessary merge commits.

## Objectives

1. Update your feature branch so that it sits directly *on top* of the new security fix from `main`.
2. Update main, such that it incorporates your feature branch changes. 

Hint: At the end both your feature branch and the main branch should point to the same commit.