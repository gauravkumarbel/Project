pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/gauravkumarbel/project.git'
            }
        }

        stage('Test') {
            steps {
                sh 'test -f index.html'
                echo 'index.html test passed'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t gaurav75/my-web:latest .'
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push gaurav75/my-web:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yml'
                sh 'kubectl apply -f service.yml'
            }
        }
    }
}
