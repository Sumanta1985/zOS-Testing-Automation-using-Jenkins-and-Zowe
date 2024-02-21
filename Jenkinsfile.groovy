pipeline {
        agent any
        stages {
	    stage('Profile set') {
                steps {
                    script {
                            build job: 'Zowe-zOSMF-Profile'
                        }
                    }
               }
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