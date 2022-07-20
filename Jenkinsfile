pipeline {
    agent any
    tools {
        go 'go'
        dockerTool 'docker'
    }
    environment {
        GO118MODULE = 'on'
        CGO_ENABLED = 0
        GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
    }
    stages {
        stage("unit-test") {
            steps {
                echo 'UNIT TEST EXECUTION STARTED'
                sh 'make unit-tests'
            }
        }
        stage('functional-tests') {
            steps {
                echo 'FUNCIONAL TEST EXECUTION STARTED'
                sh 'make functional-tests'
            }
        }
        stage('build') {
            steps {
                echo 'BUILD EXECUTION STARTED'
                sh 'go version'
                sh 'go get ./...'
                dh 'docker-build . -t rapando/pipelinetests'
            }
        }
    }
}