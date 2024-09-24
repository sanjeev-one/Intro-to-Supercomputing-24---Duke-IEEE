# Intro to Supercomputing 24 - Duke IEEE
 Example code for Intro to Supercomputing 24 - Duke IEEE workshops

# Docker workshop

## Build and Run the Docker Container
Build the Docker Image:

In a local terminal that has the directory with ml_app.py open:
```bash
docker build -t ml-app .
```
### Run the Container Locally:

```bash
docker run ml-app
```
This will print the model's accuracy and the prediction for the sample flower measurements in your terminal.
### Push to Docker Hub and Deploy on a VM

Log In to Docker Hub:
needs https://hub.docker.com/ account
```bash
docker login
```
Tag and Push the Image:
(change username to your docker hub account username)
```bash
docker tag ml-app username/ml-app
docker push username/ml-app
```
On the VM, Pull and Run the Image:

```bash
docker pull username/ml-app
docker run ml-app
```