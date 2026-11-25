#!/usr/bin/env bash
# Experiment 20 - team project: branches, PRs, conflict resolution
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

git clone -q origin.git team-project; cd team-project
show git branch -a
for b in feature-login feature-catalog feature-cart; do git checkout -q -b $b main; done
git checkout -q feature-login
cat > login.py <<'PY'
def login(username, password):
    users = {"admin": "admin123", "student": "pass123"}
    if users.get(username) == password:
        return "Login successful"
    return "Invalid credentials"

if __name__ == "__main__":
    print(login("admin", "admin123"))
PY
echo "- Login module (feature-login)" >> README.md
git add login.py README.md; git commit -q -m "Add login module"; show git push -u origin feature-login
git checkout -q feature-catalog
printf 'def catalog():\n    return ["Book", "Pen", "Bag"]\n\nif __name__ == "__main__":\n    print(catalog())\n' > catalog.py
echo "- Catalog module (feature-catalog)" >> README.md
git add catalog.py README.md; git commit -q -m "Add catalog module"; git push -q -u origin feature-catalog
git checkout -q feature-cart
printf 'def cart_total(prices):\n    return sum(prices)\n\nif __name__ == "__main__":\n    print(cart_total([10, 20, 30]))\n' > cart.py
echo "- Cart module (feature-cart)" >> README.md
git add cart.py README.md; git commit -q -m "Add cart module"; git push -q -u origin feature-cart
# pull requests reviewed and merged into main one after another
git checkout -q main
show git merge --no-ff -m "Merge PR: feature-login (approved)" feature-login
show git merge --no-ff -m "Merge PR: feature-catalog (approved)" feature-catalog || true
echo "--- conflict in README.md resolved by keeping both lines ---"
printf '# My-Personal-Project\n\nInitial README created on GitHub.\n- Login module (feature-login)\n- Catalog module (feature-catalog)\n' > README.md
git add README.md; show git commit -m "Resolve README merge conflict"
show git merge --no-ff -m "Merge PR: feature-cart (approved)" feature-cart || true
printf '# My-Personal-Project\n\nInitial README created on GitHub.\n- Login module (feature-login)\n- Catalog module (feature-catalog)\n- Cart module (feature-cart)\n' > README.md
git add README.md; show git commit -m "Resolve README merge conflict (cart)"
git push -q origin main
show git branch -a
show git log --oneline --graph
show python3 login.py

echo; echo "Workspace: $W"
