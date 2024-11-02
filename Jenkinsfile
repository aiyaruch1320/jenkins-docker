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
                    sh 'go version'
                }
            }
        }
        stage('Check node version') {
            agent {
                docker {
                    image 'node:14.17.6-alpine3.14'
                }
            }
            steps {
                script {
                    sh 'node -v'
                }
            }
        }
    }
}
