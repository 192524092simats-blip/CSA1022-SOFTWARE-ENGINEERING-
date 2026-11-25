# Experiment 18 - CI/CD Pipeline with Jenkins for a Containerized Application

**Tools:** Docker | **Course Outcome:** CO4

## Aim
To set up Jenkins and create a CI/CD pipeline that automatically builds, tests and deploys a
containerized application whenever code is pushed to the repository.

## Software Requirements
● Jenkins (LTS) – run as a Docker container or installed locally
● Docker
● Git and GitHub
● Python 3 / Flask sample application

## Source_Code
- `Dockerfile`
- `Jenkinsfile`
- `app.py`
- `requirements.txt`
- `setup_jenkins.sh`
- `test_app.py`

## How to run
`./setup_jenkins.sh` starts Jenkins in Docker. Push these files to a GitHub repo `jenkins-flask-demo`, edit the URL in `Jenkinsfile` and create the pipeline job.

## Expected Output
● Jenkins dashboard shows the pipeline job flask-cicd.
● Stage View shows Checkout → Build Image → Test → Deploy all green (SUCCESS).
● After the Deploy stage, http://localhost:5000 displays the application; a new push triggers a
   new build automatically.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | Unit test of the Jenkins test stage (pytest -q) | Real output from running the application locally with Python in the build sandbox (Docker/Kubernetes/cloud not available there) |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus Jenkins was set up and a CI/CD pipeline was created that automatically builds, tests and
deploys the containerized application.

*Full procedure: `Experiment_Details.txt`.*
