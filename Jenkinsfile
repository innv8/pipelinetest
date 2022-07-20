pipeline {
    agent any
    tools {
        go 'Go-1.18'
    }
    environment {
         GO111MODULE = 'on'
    }
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello World from Github!'
            }
        }
        stage('Compile') {
            steps {
                sh 'go build'
            }
        }
    }
}