#!/usr/bin/env bash
# Experiment 29 - feature-login branch and pull request
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

git clone -q origin.git My-Personal-Project; cd My-Personal-Project
show git status
show git checkout -b feature-login
show git branch
cat > login.py <<'PY'
def login(username, password):
    if username == "admin" and password == "1234":
        return "Login successful"
    else:
        return "Invalid username or password"

if __name__ == "__main__":
    print(login("admin", "1234"))
    print(login("admin", "wrong"))
PY
show git status
show git add login.py
show git commit -m "Added login function"
show git push -u origin feature-login
echo "--- Pull request 'Add Login Function' (feature-login -> main) is merged on GitHub; simulated here ---"
show git checkout main
show git merge --no-ff -m "Merge pull request: Add Login Function" feature-login
show git push origin main
show ls
show python3 login.py

echo; echo "Workspace: $W"
