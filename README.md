# `git-sync`

Sync from a remote git repo every so often.

## Config

| var          | default          |
|--------------|------------------|
| `TARGET_DIR` | `/usr/local/src` |
| `GIT_REPO`   |                  |
| `GIT_BRANCH` | `master`         |
| `DELAY`      | `1m`             |

## Usage

```
docker run -e GIT_REPO=https://github.com/errm/cheese errm/git-sync
```
