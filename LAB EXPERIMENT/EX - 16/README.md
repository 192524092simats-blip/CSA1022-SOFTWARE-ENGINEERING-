# Experiment 16 - Static Website Containerized and Served with Docker and Nginx

**Tools:** Docker | **Course Outcome:** CO3

## Aim
To create a simple static website, write a Dockerfile that serves it with Nginx, build the Docker
image, run the container and access the website from a browser.

## Software Requirements
● Docker Desktop / Docker Engine
● Visual Studio Code
● Web browser

## Source_Code
- `Dockerfile`
- `index.html`
- `run_docker.sh`
- `style.css`

## How to run
`docker build -t static-site:1.0 .` then `docker run -d --name mysite -p 8080:80 static-site:1.0` and open http://localhost:8080 (see `run_docker.sh`).

## Expected Output
● Image static-site:1.0 is built successfully.
● docker ps shows the container running with 0.0.0.0:8080->80/tcp.
● http://localhost:8080 displays the “Welcome to My Static Website” page.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | Website page as served by the container (rendered from index.html) | Page rendered from index.html with a headless renderer, NOT from a running container |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus a static website was created, containerized with a Dockerfile using Nginx, built into an
image, run as a container and accessed successfully in a browser.

*Full procedure: `Experiment_Details.txt`.*
