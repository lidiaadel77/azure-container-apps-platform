# Setup Steps

This file documents the setup process for the Azure Container Apps Platform project.

## 1. Project Goal

The goal of this project is to containerize a Flask application and deploy it to Azure Container Apps.

The project demonstrates:

- Python Flask API
- Docker image build
- Azure Container Registry
- Azure Container Apps
- Managed Identity
- Terraform Infrastructure as Code
- GitHub Actions workflow
- Log Analytics monitoring

## 2. Local Application

The Flask application includes:

- `/`
- `/health`
- `/version`

The app was tested locally using Pytest.

## 3. Docker

A Dockerfile was created to package the Flask app into a container image.

The image was built locally using:

`docker build -t azure-container-apps-platform:local .`

The container was tested locally using:

`docker run --rm -p 5000:5000 -e APP_VERSION=1.0.0 -e APP_ENV=docker azure-container-apps-platform:local`

## 4. Azure Infrastructure

Terraform created:

- Resource Group
- Azure Container Registry
- Log Analytics Workspace
- Azure Container Apps Environment
- User Assigned Managed Identity
- AcrPull role assignment
- Azure Container App

## 5. Created Resources

Resource Group:

`rg-container-platform-7oxdr`

Azure Container Registry:

`acrcontainer7oxdr`

Container Apps Environment:

`cae-container-platform-7oxdr`

Container App:

`ca-container-platform-7oxdr`

Managed Identity:

`id-container-platform-7oxdr`

Container App URL:

`https://ca-container-platform-7oxdr--vxa0cqq.yellowocean-0ed0230d.francecentral.azurecontainerapps.io`

## 6. Current Status

The Azure Container App is currently running a Microsoft sample image.

Next phase:

- Build the Flask Docker image
- Push the image to Azure Container Registry
- Update Azure Container Apps to run the Flask image

## 7. Deploy Flask Image to Azure Container Apps

The Flask Docker image was built locally and pushed to Azure Container Registry.

Image name:

`acrcontainer7oxdr.azurecr.io/flask-api:1.0.0`

The Azure Container App was updated from the Microsoft sample image to the custom Flask image.

Container App URL:

`https://ca-container-platform-7oxdr.yellowocean-0ed0230d.francecentral.azurecontainerapps.io`

Tested endpoints:

- `/`
- `/health`
- `/version`

The `/health` endpoint confirmed the Flask API was running successfully on Azure Container Apps.

The `/version` endpoint confirmed the deployed environment and version.

Screenshots captured:

- `container-app-flask-home.png`
- `container-app-health.png`
- `container-app-version.png`

Current status:

The custom Flask container image is running successfully on Azure Container Apps.

## 8. GitHub Actions CI/CD Deployment

GitHub Actions was configured to automatically build and deploy the Dockerized Flask application.

Workflow file:

`.github/workflows/test-build.yml`

The workflow performs the following steps:

- Checks out the repository
- Sets up Python
- Installs dependencies
- Runs Pytest tests
- Logs into Azure using OpenID Connect
- Logs into Azure Container Registry
- Builds the Docker image
- Pushes the Docker image to ACR
- Updates Azure Container Apps with the new image

Azure Container Registry:

`acrcontainer7oxdr`

Container App:

`ca-container-platform-7oxdr`

The deployed image tag uses the GitHub commit SHA.

The `/version` endpoint confirms the app was deployed by GitHub Actions.

Expected environment value:

`github-actions`

This completes the automated container CI/CD pipeline.
