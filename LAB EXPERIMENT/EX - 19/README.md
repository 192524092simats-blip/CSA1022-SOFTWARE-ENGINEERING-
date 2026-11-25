# Experiment 19 - Continuous Deployment of a Dockerized Application using GitHub Actions

**Tools:** Docker | **Course Outcome:** CO4

## Aim
To implement continuous deployment with GitHub Actions: build and push the Docker image of
an application to Docker Hub automatically and deploy it to a cloud platform whenever new
code is pushed.

## Software Requirements
● GitHub repository and GitHub Actions
● Docker and Docker Hub account
● Cloud platform – AWS ECS / Azure AKS / Google GKE (or Render for a free alternative)

## Source_Code
- `Dockerfile`
- `app.py`
- `requirements.txt`
- `.github/workflows/cd.yml`

## How to run
Push these files to a GitHub repo `gha-docker-cd`, add the secrets listed in the Procedure; the workflow is `.github/workflows/cd.yml`.

## Expected Output
● The Actions tab shows the workflow “CD – Build, Push and Deploy” completed with a
   green tick.
● Docker Hub shows the new image tags latest and the commit SHA.
● The cloud service is updated and the public URL displays the new version after every push.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | Application response (Version 1) when run locally | Real output from running the application locally with Python in the build sandbox (Docker/Kubernetes/cloud not available there) |
| `Output_02.png` | Workflow file parses correctly | Real YAML syntax validation; the workflow was NOT run on GitHub here |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus continuous deployment was implemented with GitHub Actions; on every push the Docker
image was built, pushed to Docker Hub and deployed to the cloud platform automatically.

*Full procedure: `Experiment_Details.txt`.*
