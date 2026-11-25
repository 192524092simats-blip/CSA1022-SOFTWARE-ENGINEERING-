#!/usr/bin/env bash
# Experiment 15 - branches and resolving a merge conflict
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

show git clone origin.git work
cd work
show git checkout -b feature-update
sed -i '3s/.*/Line updated on feature-update branch./' README.md
show git add README.md
show git commit -m "Updated README"
show git push -u origin feature-update
# meanwhile a teammate changes the SAME line on main
cd ..; git clone -q origin.git mate; cd mate
sed -i '3s/.*/Line updated on main by a teammate./' README.md
git commit -q -am "Teammate edit on main"; git push -q origin main; cd ../work
show git checkout main
show git pull origin main
show git checkout feature-update
show git merge main || true
show git status --short
echo; echo "--- README.md with conflict markers ---"; cat README.md
printf '# My-Personal-Project\n\nLine updated on main by a teammate and on feature-update (merged).\n' > README.md
echo; echo "--- conflict resolved manually ---"; cat README.md
show git add README.md
show git commit -m "Resolved merge conflict"
show git push origin feature-update
show git log --oneline --graph

echo; echo "Workspace: $W"
