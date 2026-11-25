# Experiment 15 - Working with Git Branches and Resolving Merge Conflicts

**Tools:** Git/GitHub | **Course Outcome:** CO3

## Aim
To work with Git branches while collaborating, merge the main branch into a feature branch,
resolve merge conflicts manually, and push the result to GitHub with a pull request.

## Software Requirements
● Git (Git Bash)
● GitHub
● Visual Studio Code

## Source_Code
- `merge_conflict_demo.sh`

## How to run
`bash merge_conflict_demo.sh` reproduces the conflict and its resolution locally. Real GitHub steps are in the Procedure.

## Expected Output
● Feature branch feature-update created and pushed.
● Merging main into feature-update shows CONFLICT (content): Merge conflict in
   README.md.
● Conflict resolved, committed as “Resolved merge conflict”, pushed, and a pull request
   created from feature-update to main.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | Git workflow output (part 1 of 3) | Real output captured from an actual run in the build sandbox (local bare repository stands in for GitHub) |
| `Output_02.png` | Git workflow output (part 2 of 3) | Real output captured from an actual run in the build sandbox (local bare repository stands in for GitHub) |
| `Output_03.png` | Git workflow output (part 3 of 3) | Real output captured from an actual run in the build sandbox (local bare repository stands in for GitHub) |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus Git branches were used for collaboration, the merge conflict between the feature and main
branches was resolved manually, and the merged feature branch was pushed with a pull request.

*Full procedure: `Experiment_Details.txt`.*
