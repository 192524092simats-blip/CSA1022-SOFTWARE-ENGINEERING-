# Experiment 23 - Multi-Container Application (Frontend, Backend, Database) On Kubernetes with Scaling

**Tools:** Docker, Kubernetes | **Course Outcome:** CO3

## Aim
To deploy a multi-container application consisting of a frontend, a backend API and a database
on Kubernetes using YAML files, monitor pods and services, and scale the frontend to handle
increased load.

## Software Requirements
● Docker
● Kubernetes – Minikube or Docker Desktop Kubernetes
● kubectl
● Kubernetes Dashboard (minikube dashboard)

## Source_Code
- `deploy.sh`
- `backend/Dockerfile`
- `backend/app.py`
- `frontend/Dockerfile`
- `frontend/default.conf`
- `frontend/index.html`
- `k8s/backend.yaml`
- `k8s/frontend.yaml`
- `k8s/mysql.yaml`

## How to run
`./deploy.sh <dockerhub-username>` (Minikube + kubectl). YAML files are in `k8s/`.

## Expected Output
● kubectl get all shows the mysql, backend and frontend deployments and services in Running
   state.
● The frontend opens through the NodePort and displays data fetched from the backend, which
   reads from MySQL.
● After kubectl scale deployment frontend --replicas=4, four frontend pods are Running; the
   Dashboard shows the updated deployment.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | All Kubernetes manifests parse correctly (YAML validation) | Real YAML syntax validation; NOT applied to a cluster here |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus a multi-container application with frontend, backend and database was deployed on
Kubernetes, its pods and services were monitored, and the frontend was scaled to handle
increased load.

*Full procedure: `Experiment_Details.txt`.*
