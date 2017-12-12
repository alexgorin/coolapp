pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                make build
            }
        }
        deploy('test') {
            steps {
                make test
            }
        }
        stage('deploy') {
            steps {
                make deploy
            }
        }
    }
}