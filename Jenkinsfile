 pipeline {
     agent any
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
     }
 }