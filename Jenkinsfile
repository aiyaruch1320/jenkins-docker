pipeline {
    agent any

    stages {
        stage('Check golang version') {
            agent {
                docker {
                    image 'golang:1.22-alpine3.19'
                }
            }
            steps {
                script {
                    sh 'ls'
                    sh 'go version'
                }
            }
        }
    }
}
