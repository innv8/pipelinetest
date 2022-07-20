 pipeline {
     agent any
     tools {
         go 'Go'
         docker 'Docker'
     }
     stages {
         stage("hello-world") {
             steps {
                 echo 'Just printing Hello World'
                 echo 'Hello World!'
             }
         }
         stage('check installations') {
             steps {
                 echo 'Just checking installation'
                 sh 'make --version'
                 sh 'docker version'
                 sh 'go version'
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