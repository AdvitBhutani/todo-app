pipeline {
    agent any

    tools {
        maven 'jenkins-maven'
        jdk 'java-21'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/AdvitBhutani/todo-app.git'
            }
        }
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t todo-app:latest .'
            }
        }
        stage('Run Docker Container') {
            steps {
                bat 'docker run -d -p 8083:8080 todo-app:latest'
            }
        }
    }
}
