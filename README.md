# Askar Bakdaulet DevOps Project

## Student Information
- Name: Bakdaulet
- Surname: Askar
- Group: IT2-2306
- Student ID: 38030
- Course: DevOps

## Project Overview
This project demonstrates Linux administration, Bash scripting, Git, GitHub, Docker, Docker Compose, and Jenkins CI/CD.

## Technologies
- Ubuntu Linux / WSL
- Bash
- Git and GitHub
- Python 3
- Docker
- Docker Compose
- Jenkins

## Project Files
- app/app.py — Python application
- scripts/Askar_Bakdaulet_system.sh — system information script
- config/app.conf — application configuration
- Dockerfile — Docker image configuration
- docker-compose.yml — Docker Compose configuration
- Jenkinsfile — Jenkins CI/CD pipeline
- Askar_Bakdaulet_info.txt — student information

## Run Python Application
    python3 app/app.py

## Build Docker Image
    docker build -t askar-bakdaulet-devops .

## Run with Docker Compose
    docker compose up --build

To stop the application:
    docker compose down

## Run System Script
    chmod +x scripts/Askar_Bakdaulet_system.sh
    ./scripts/Askar_Bakdaulet_system.sh

## Jenkins Pipeline
The pipeline includes Checkout, Build, Test, Docker Build, and Docker Run stages.

## Git Branches
- main — main project branch
- development — development branch

## Jenkins Job
Askar_Bakdaulet_DevOps
