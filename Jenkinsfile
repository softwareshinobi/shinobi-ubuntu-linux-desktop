pipeline {

    agent none

    options {
    
        disableConcurrentBuilds(abortPrevious: true)
        
        buildDiscarder(logRotator(numToKeepStr: '1'))
    }
     
    stages {
  
        stage('docker compose build') {
            
            agent {
            
                label "aventador"
            
            }

            steps {

                dir('.') {

                    sh 'docker compose build'
                    
                }                

            }

        }   

        stage('docker compose push') {

            agent {
            
                label "aventador"
            
            }

            steps {

                dir('.') {

                    sh 'docker compose push'
                    
                }                  

            }

        }    
        
}}
