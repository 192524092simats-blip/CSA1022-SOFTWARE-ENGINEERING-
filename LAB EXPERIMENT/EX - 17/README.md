# Experiment 17 - Flask API Containerized with Docker, Pushed to Docker Hub and Deployed on Kubernetes

**Tools:** Docker & Kubernetes | **Course Outcome:** CO3

## Aim
To create a simple Python Flask API, containerize it with Docker, push the image to Docker Hub
and deploy it on Kubernetes using Deployment and Service (NodePort) manifests.

## Software Requirements
● Python 3 and Flask
● Docker Desktop
● Docker Hub account
● Kubernetes (Docker Desktop Kubernetes or Minikube) and kubectl

## Source_Code
- `Dockerfile`
- `app.py`
- `deploy.sh`
- `deployment.yaml`
- `requirements.txt`
- `service.yaml`

## How to run
`pip install -r requirements.txt && python app.py` to test locally; `./deploy.sh <dockerhub-username>` builds, pushes and deploys to Kubernetes (Docker Desktop K8s or Minikube).

## Expected Output
● Image <dockerhub-username>/flask-api:1.0 pushed to Docker Hub.
● kubectl get pods shows 2 pods in Running state; kubectl get svc shows flask-api-service of
   type NodePort 5000:30007/TCP.
● http://localhost:30007/ returns {"message": "Hello from Flask API on Kubernetes"} and
   /api/students returns the JSON list.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | Flask API tested locally: /, /api/students, POST, /health | Real output from running the application locally with Python in the build sandbox (Docker/Kubernetes/cloud not available there) |
| `Output_02.png` | Kubernetes manifests parse correctly (YAML validation) | Real YAML syntax validation; the manifests were NOT applied to a cluster here |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus a Flask API was containerized with Docker, pushed to Docker Hub and deployed on
Kubernetes, and the API was accessed successfully through the NodePort service.

*Full procedure: `Experiment_Details.txt`.*
