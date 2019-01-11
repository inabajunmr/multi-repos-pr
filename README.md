# multi-repos-pr
Create same diff Pull Request for Multiple GitHub repositories.

# Prerequisite
 * git cli
 * hub - https://github.com/github/hub

# 1. Usage
## Put file under source directory.
If you want to add file "/test/file.txt" to repository, put follow file.

`./source/test/file.txt`

# 2. Rewrite commits.sh

Rewrite each settings.

```
vi commits.sh
```

Fix bellow values.

```
BRANCH_NAME=BANCHNAME
COMMIT_COMMENT="COMMITCOMMENT"
PR_COMMENT="PRTITLE\n\nPRCOMMENT"
```

# 3. Set target Repository

Rewrite repos file.
If your usename is `inabajunmr` and you want edit repositories `repo1` and `repo2`, edit "repos" file.

```
vi repos
```

## Example
```
inabajunmr/repo1
inabajunmr/repo2
```
