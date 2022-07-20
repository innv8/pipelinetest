pipeline {
    agent any
    tools {
        go 'which go'
        dockerTool 'docker'
    }
    environment {
        GO118MODULE = 'on'
        CGO_ENABLED = 0
        GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
    }
    stages {
        stage('get-go-location'){
            steps {
                sh 'which go'
                sh 'go version'
                sh 'ls -lh'
                sh 'pwd'
            }
        }
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
                sh 'docker-build . -t rapando/pipelinetests'
            }
        }
        stage('run') {
        steps {
            echo 'RUN STAGE'
            sh 'docker run rapando/pipelinetests'
        }
        }
    }
}
