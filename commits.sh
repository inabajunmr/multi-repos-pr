#!/bin/sh

BRANCH_NAME=BRANCHNAME
COMMIT_COMMENT="COMMITCOMMENT"
PR_COMMENT="PRTITLE\n\nPRCOMMENT"
while read line
do
  git clone git@github.com:${line}.git
  cd "$(echo ${line} | sed -E s/^[^\/]+.//)"
  git branch ${BRANCH_NAME}
  git checkout ${BRANCH_NAME}
  rsync -r ../source/ ./
  git add .
  git commit -m "${COMMIT_COMMENT}"
  git push -u --set-upstream origin ${BRANCH_NAME}
  echo ${PR_COMMENT} | hub pull-request -F -
  cd -
done < repos

