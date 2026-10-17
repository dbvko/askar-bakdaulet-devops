pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Bakdaulet'
        STUDENT_SURNAME = 'Askar'
        STUDENT_GROUP = 'IT2-2306'
        STUDENT_ID = '38030'
        IMAGE_NAME = 'askar-bakdaulet-devops'
        CONTAINER_NAME = 'askar-bakdaulet-container'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out project source code'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building Python application'
                sh 'python3 --version'
                sh 'python3 -m py_compile app/app.py'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing student application'
                sh 'python3 app/app.py'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image'
                sh 'docker build -t ${IMAGE_NAME}:latest .'
            }
        }

        stage('Docker Run') {
            steps {
                echo 'Running Docker container'
                sh '''
                    docker rm -f ${CONTAINER_NAME} || true
                    docker run --name ${CONTAINER_NAME} \
                      -e STUDENT_NAME="${STUDENT_NAME}" \
                      -e STUDENT_SURNAME="${STUDENT_SURNAME}" \
                      -e STUDENT_GROUP="${STUDENT_GROUP}" \
                      -e STUDENT_ID="${STUDENT_ID}" \
                      ${IMAGE_NAME}:latest
                    docker rm -f ${CONTAINER_NAME} || true
                '''
            }
        }
    }

    post {
        success {
            echo 'DevOps pipeline completed successfully!'
        }
        failure {
            echo 'DevOps pipeline failed. Check the console output.'
        }
    }
}

