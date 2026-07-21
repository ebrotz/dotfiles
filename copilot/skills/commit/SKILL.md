---
name: commit
description: Creates a commit for the currently untracked changes
---

# Git Commit

Creates standardized git commits.

## Workflow

1. Analyze diff

2. Validate the current branch. Committing directly to a main branch (`main`,
`master`, `dev`) isn't forbidden, but it's a smell worth flagging. Also confirm
the branch is appropriate for the work: compare the branch name against the
scope of the diff (changed paths/feature). If they're inconsistent — or you're
on a main branch — pause and ask the user whether to proceed, switch, or create
a new branch. Do not switch or create branches without user confirmation.

3. Stage files. Never stage files that contain secrets. Generated code should
generally not be staged. If unsure, ask the user.

4. Generate commit message. The commit message should be concise and contain
no coauthor statement.

## Best Practices

- One logical change per commit. When analyzing changes determine if multiple
commits should be used. If so, try to determine the proper order to maintain
cohesiveness.

## Safety

- Never update git config.

- Never run destructive commands such as force, or hard reset, without explicit
authorization from the user.

- Never force push to the main branch, usually main, dev, or master.
