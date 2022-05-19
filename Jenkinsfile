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
            steps {
                sh '''
               docker build -t my-serge:01 .
                  '''
             }     
            }

          stage('tag image ') {
            steps {
                sh '''
                docker tag my-serge:01 devopseasylearning2021/my-serge:01
                  
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
               docker push devopseasylearning2021/my-serge:01
               '''
            }
          }



    }

}
