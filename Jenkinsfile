pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git'
            }
        }

        stage('Check Files') {
            steps {
                sh '''
                    echo "Checking Kubernetes files..."
                    ls -l
                    test -f deployment.yml
                    test -f service.yml
                '''
            }
        }

        stage('Kubernetes Validate') {
            steps {
                sh '''
                    kubectl apply --dry-run=client -f deployment.yml
                    kubectl apply --dry-run=client -f service.yml
                '''
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh '''
                    kubectl apply -f deployment.yml
                    kubectl apply -f service.yml
                '''
            }
        }

        stage('Check Deployment') {
            steps {
                sh '''
                    kubectl get deployment
                    kubectl get pods
                    kubectl get service
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }

        failure {
            echo 'Deployment failed!'
        }
    }
}
