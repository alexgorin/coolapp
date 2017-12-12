pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'make build'
            }
        }
        deploy('test') {
            steps {
                sh 'make test'
            }
        }
        stage('deploy') {
            steps {
                sh 'make deploy'
            }
        }
    }
}