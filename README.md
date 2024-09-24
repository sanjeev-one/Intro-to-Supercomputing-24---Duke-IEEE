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

# On the VM, Pull and Run the Image:


1. **Pull the Docker Image**:
    ```bash
    docker pull dukeieee/ml-app
    ```
    This command downloads the Docker image `dukeieee/ml-app` from Docker Hub to your local system or VM. The image contains the Python ML app and its required dependencies.

2. **Run the Docker Container**:
    ```bash
    docker run dukeieee/ml-app
    ```
    This command starts a container using the downloaded image. The app will train a machine learning model on the iris dataset and print the model's accuracy and predictions directly to your terminal.

This approach ensures that the app runs with all necessary dependencies, regardless of the environment, providing a consistent and reproducible setup.