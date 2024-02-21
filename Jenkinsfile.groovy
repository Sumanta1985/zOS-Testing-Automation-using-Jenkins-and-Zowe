pipeline {
        agent any
        stages {
            stage('Build') {
                steps {
                    script {
                            build job: 'script1'
                        }
                    }
               }   
            stage('Test') {
                steps {
                    script {
                            build job: 'script2'
                        }
                    }
               }   
           }
       }