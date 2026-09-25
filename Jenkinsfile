pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Test Website') {
            steps {
                sh 'test -f dosto_ka_adda.html'
                echo 'Website file found successfully!'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t devops-website:latest .'
            }
        }
    }
}
