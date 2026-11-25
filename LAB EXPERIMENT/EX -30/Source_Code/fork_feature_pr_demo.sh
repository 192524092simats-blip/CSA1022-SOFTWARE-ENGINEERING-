#!/usr/bin/env bash
# Experiment 30 - fork, feature branch and pull request
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

# stand-in project file (the real experiment uses the partner's repository)
git clone -q origin.git seed2; ( cd seed2; printf 'print("Simple Python Project")\n' > ytDownloader.py; git add .; git commit -q -m "Add project file"; git push -q origin main )
git clone -q --bare origin.git fork.git
show git clone fork.git 3-Simple-Python-Projects
cd 3-Simple-Python-Projects
show ls
show git checkout -b feature-update
show git branch
printf 'def project_info():\n    print("Project: 3 Simple Python Projects - info feature")\n\nproject_info()\n' >> ytDownloader.py
show git status --short
show git add .
show git commit -m "Added project info feature"
show git push -u origin feature-update
show python3 ytDownloader.py
echo "--- Next: open a Pull Request from <your-fork>:feature-update to <original>:main on GitHub ---"
show git log --oneline --all --graph

echo; echo "Workspace: $W"
