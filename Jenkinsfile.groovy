<<<<<<< HEAD
pipeline {
        agent any
        stages {
            stage('script1') {
                steps {
                    script {
                            build job: 'script1'
                        }
                    }
               }   
            stage('script2') {
                steps {
                    script {
                            build job: 'script2'
                        }
                    }
               }   
           }
=======
pipeline {
        agent any
        stages {
            stage('script1') {
                steps {
                    script {
                            build job: 'script1'
                        }
                    }
               }   
            stage('script2') {
                steps {
                    script {
                            build job: 'script2'
                        }
                    }
               }   
           }
>>>>>>> 8bc5a9b90a450fae2f261fc5777e780d0e9a711a
       }