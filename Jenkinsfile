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
                        echo "Installing glide for this step"
                        sh 'curl https://glide.sh/get | sh'

                        echo "Configuring git to use ssh rather than https for downloading private repositories"
                        // This configures git settings to allow for private repositories to be downloaded with glide.
                        sh "git config --local url.ssh://git@github.com/.insteadOf https://github.com/"

                        echo "Installing glide dependencies"
                        sh "glide install"

                        echo "Building Go Code"
                        sh "go build ..."
                     }
                }
            }
        }
    }
}