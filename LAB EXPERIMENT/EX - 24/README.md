# Experiment 24 - CI/CD Pipeline for a Flask Application using GitHub Actions with Cloud Deployment

**Tools:** GitHub Actions, Docker | **Course Outcome:** CO3

## Aim
To create a CI/CD pipeline with GitHub Actions for a containerized Flask application that
automatically tests the code, builds and pushes the Docker image to Docker Hub and deploys the
application to a cloud platform (Heroku / AWS).

## Software Requirements
● GitHub and GitHub Actions
● Python 3, Flask, pytest
● Docker and Docker Hub
● Heroku account (or AWS / Render)

## Source_Code
- `Dockerfile`
- `app.py`
- `requirements.txt`
- `test_app.py`
- `.github/workflows/ci-cd.yml`

## How to run
`pip install -r requirements.txt && pytest -v`; push to GitHub with the secrets in the Procedure to run `.github/workflows/ci-cd.yml`.

## Expected Output
● Actions run shows jobs test → build-and-push → deploy completed successfully.
● pytest reports 2 passed.
● Docker Hub shows the new image; the deployment link (e.g.
   https://<app-name>.herokuapp.com) displays the Flask application.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | pytest reports 2 passed (the CI 'test' job command) | Real output from running the application locally with Python in the build sandbox (Docker/Kubernetes/cloud not available there) |
| `Output_02.png` | Workflow file parses correctly | Real YAML syntax validation; the workflow was NOT run on GitHub here |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus a CI/CD pipeline was created with GitHub Actions that tests, builds and pushes the Docker
image of the Flask application and deploys it to the cloud automatically.

*Full procedure: `Experiment_Details.txt`.*
