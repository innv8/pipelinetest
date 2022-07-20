pipeline {
    agent any
    stages {
        stage('Test Build Stage') {
            steps {
                script {
                    def root = tool name: '1.8.3', type: go
                     withEnv(["GOPATH=${env.WORKSPACE}/go", "GOROOT=${root}", "GOBIN=${root}/bin", "PATH+GO=${root}/bin"]) {
                        sh "mkdir -p ${env.WORKSPACE}/go/src"
                        sh 'go version'
                     }
                }
            }
        }
    }
}