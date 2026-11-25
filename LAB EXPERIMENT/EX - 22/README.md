# Experiment 22 - Push and Pull Docker Images using Docker Hub

**Tools:** Docker Hub, Docker CLI | **Course Outcome:** CO3

## Aim
To create a Docker image for a static HTML website, tag and push it to Docker Hub, then pull
the image on another machine and run it.

## Software Requirements
● Docker Engine / Docker Desktop
● Docker CLI
● Docker Hub account
● Second machine or Play with Docker (labs.play-with-docker.com)

## Source_Code
- `Dockerfile`
- `docker_hub_commands.sh`
- `index.html`

## How to run
`./docker_hub_commands.sh <dockerhub-username>` (build, tag, push); run the pull/run lines on the second machine.

## Expected Output
● Image <dockerhub-username>/static-web:1.0 visible in the Docker Hub repository with its
   tag and size.
● On the second machine docker pull downloads the image and docker run -d -p 8080:80 starts
   it.
● The website opens on port 8080 of the second machine.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | Website page as served by the container (rendered from index.html) | Page rendered from index.html with a headless renderer, NOT from a running container |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus a Docker image of a static website was built, tagged and pushed to Docker Hub, and then
pulled and run successfully on another machine.

*Full procedure: `Experiment_Details.txt`.*
