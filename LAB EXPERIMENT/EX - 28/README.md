# Experiment 28 - Pulling Collaborator Changes from GitHub

**Tools:** Git/GitHub | **Course Outcome:** CO4

## Aim
To pull the latest changes made by a collaborator from the GitHub repository into the local
repository and verify that the local copy is up to date.

## Software Requirements
● Git (Git Bash)
● GitHub (repository with a collaborator)
● Visual Studio Code

## Source_Code
- `pull_collaborator_changes_demo.sh`

## How to run
`bash pull_collaborator_changes_demo.sh` shows the flow locally. Real GitHub steps are in the Procedure.

## Expected Output
● Collaborator’s commit “Updated README by collaborator” is pushed to GitHub.
● git pull origin main shows Fast-forward, 1 file changed.
● README.md in VS Code shows the collaborator’s change; git status reports the branch is
   up to date.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | Git workflow output (part 1 of 1) | Real output captured from an actual run in the build sandbox (local bare repository stands in for GitHub) |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus the latest changes made by the collaborator were pulled from GitHub and verified in the
local repository.

*Full procedure: `Experiment_Details.txt`.*
