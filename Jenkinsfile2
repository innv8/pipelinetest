pipeline {
    agent { docker { image 'golang:1.17.5-alpine' } }
    environment {
        GO118MODULE = 'on'
        CGO_ENABLED = 0
        GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
    }
    stages {
        stage('get-go-location'){
            steps {
                sh 'which go'
                sh '$(which go) version'
                sh 'ls -lh $PWD'
                sh 'echo $PWD'
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
                sh 'go build -o $PWD/pipelinetests'
            }
        }
        stage('run') {
        steps {
            echo 'RUN STAGE'
            sh '$PWD/pipelinetests'
        }
        }
    }
}
