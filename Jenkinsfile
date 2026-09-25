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
                sh 'ls -la'
                sh 'ls -la project'
                sh 'test -f project/index.html'
                echo 'index.html found successfully!'
            }
        }
    }
}
