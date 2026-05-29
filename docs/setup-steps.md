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
