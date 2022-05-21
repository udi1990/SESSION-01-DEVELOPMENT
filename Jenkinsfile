pipeline {
    agent any

      environment {
        USERNAME = 'devopseasylearning2021'
        PASSWORD =  'DevOps2021@'
      }

    options { buildDiscarder(logRotator(artifactDaysToKeepStr: '',
     artifactNumToKeepStr: '', daysToKeepStr: '3', numToKeepStr: '5'))
      disableConcurrentBuilds() }
      
      
    stages {
     
          stage('build image ') {


              docker { image 'maven:3.8.1-adoptopenjdk-11' }
          }
            steps {
                sh '''
               docker build -t serge:001 .
                  '''
             }     
            }

          stage('tag image ') {

            docker { image 'maven:3.8.1-adoptopenjdk-11' }
          }  
            steps {
                sh '''
                docker tag serge:001 devopseasylearning2021/serge:001 
                  
                   '''
            }
        }  

          stage('docker login ') {
            steps {
                sh '''
               docker login -u $USERNAME -p $PASSWORD
               '''
            }
        }

          stage('push image ') {
            steps {
                sh '''
               docker push devopseasylearning2021/serge:001
               '''
            }
          }



    }

}
