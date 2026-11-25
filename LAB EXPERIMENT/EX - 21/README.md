# Experiment 21 - Containerizing a Python Flask To-Do Application using Docker

**Tools:** Docker, Flask | **Course Outcome:** CO3

## Aim
To write a simple Python Flask To-Do list application, containerize it with a Dockerfile, build
and run it locally, test its functionality inside the container and push the image to Docker Hub.

## Software Requirements
● Python 3, Flask
● Docker Desktop
● Docker Hub account
● Web browser / curl

## Source_Code
- `.dockerignore`
- `Dockerfile`
- `app.py`
- `requirements.txt`
- `run_docker.sh`
- `templates/index.html`

## How to run
`pip install -r requirements.txt && python app.py` (http://localhost:5000) or build with Docker (see `run_docker.sh`).

## Expected Output
● Image todo-app:1.0 built; container todo running on port 5000.
● http://localhost:5000 shows the To-Do list; tasks can be added and deleted.
● Image pushed as <dockerhub-username>/todo-app:1.0 and visible on Docker Hub.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | To-Do functionality test: add 3 tasks, mark one Done, delete one, JSON endpoint | Real output from running the application locally with Python in the build sandbox (Docker/Kubernetes/cloud not available there) |
| `Output_02.png` | To-Do list page after the operations (rendered from the live app response) | Page rendered from the locally running Flask app, not from a container |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus a Flask To-Do application was containerized using Docker, tested inside the container and
the image was pushed to Docker Hub.

*Full procedure: `Experiment_Details.txt`.*
