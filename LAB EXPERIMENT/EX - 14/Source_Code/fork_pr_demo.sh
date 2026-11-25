#!/usr/bin/env bash
# Experiment 14 - fork-and-pull-request workflow
# Runs the whole workflow on your machine. A local bare repository (origin.git) plays the role of GitHub,
# so no account or internet is needed. For the REAL GitHub steps follow the Procedure in Experiment_Details.txt.
set -e
W=$(mktemp -d); cd "$W"
export GIT_AUTHOR_NAME="Student" GIT_AUTHOR_EMAIL="student@example.com" GIT_COMMITTER_NAME="Student" GIT_COMMITTER_EMAIL="student@example.com"
export GIT_MERGE_AUTOEDIT=no GIT_EDITOR=true
git config --global init.defaultBranch main 2>/dev/null || true
git init -q --bare -b main origin.git
git clone -q origin.git seed 2>/dev/null; cd seed; git checkout -q -b main 2>/dev/null || true
printf '# My-Personal-Project\n\nInitial README created on GitHub.\n' > README.md
git add README.md; git commit -q -m "Initial commit"; git push -q origin main; cd ..; rm -rf seed
show() { echo; local s="\$"; for a in "$@"; do case "$a" in *\ *) s="$s '$a'";; *) s="$s $a";; esac; done; echo "$s"; "$@" 2>&1; }

# "fork" = a second bare repository cloned from the upstream repository
git clone -q --bare origin.git fork.git
show git clone fork.git first-contributions
cd first-contributions
show git checkout -b update-readme
show git branch
echo "Added my name to the contributors list" >> README.md
show git status --short
show git add README.md
show git commit -m "Updated README for collaboration experiment"
show git push -u origin update-readme
echo "Reviewer: please add one more line about the workflow." # review comment (done on GitHub in the real experiment)
echo "Workflow: fork -> clone -> branch -> commit -> push -> pull request" >> README.md
show git add .
show git commit -m "Addressed review comments"
show git push
cd ..
# maintainer side: merging the pull request into upstream main
git clone -q origin.git maintainer; cd maintainer
git fetch -q ../fork.git update-readme
show git merge --no-ff FETCH_HEAD -m "Merge pull request: update-readme"
show git log --oneline --graph

echo; echo "Workspace: $W"
