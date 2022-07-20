pipeline {
    agent any
   agent { docker 'golang:1.18.4-alpine' }
    environment {
        GO118MODULE = 'on'
        CGO_ENABLED = 0
        GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
    }
    stages {
        stage("unit-test") {
            steps {
                echo 'UNIT TEST EXECUTION STARTED'
                sh 'go test ./...'
            }
        }
        stage('functional-tests') {
            steps {
                echo 'FUNCIONAL TEST EXECUTION STARTED'
                sh 'go test ./...'
            }
        }
        stage('build') {
            steps {
                echo 'BUILD EXECUTION STARTED'
                sh 'go version'
                sh 'go get ./...'
                sh 'go build -o $PWD/pipelinetests main.go'
            }
        }
        stage('run') {
        steps {
            echo 'RUN STAGE'
            sh 'go run $PWD/pipelinetests'
        }
        }
    }
}
