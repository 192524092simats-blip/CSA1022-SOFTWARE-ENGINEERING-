#!/usr/bin/env bash
# Experiment 28 - pull collaborator changes
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

git clone -q origin.git mine
git clone -q origin.git collaborator
( cd collaborator; echo "Line added by the collaborator." >> README.md; git add README.md
  git commit -q -m "Updated README by collaborator"; git push -q origin main )
cd mine
echo "(collaborator has pushed a commit to origin)"
show git pull origin main
show cat README.md
show git status
show git log --oneline

echo; echo "Workspace: $W"
