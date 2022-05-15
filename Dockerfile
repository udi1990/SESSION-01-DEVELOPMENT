pipeline {
    agent any

     environment {
         USERNAME = 'devopseasylearning2021'
         PASSWORD = 'DevOps2021@'
     }
    options { buildDiscarder(logRotator(artifactDaysToKeepStr: '',
     artifactNumToKeepStr: '', daysToKeepStr: '3', numToKeepStr: '5'))
      disableConcurrentBuilds() }
      


    stages {
        stage('Build images') {
            steps {
                sh '''
               docker build -t igor:001

                '''
            }
        }
 
        stage('Tag image') {
            steps {
                sh '''
                docker tag eric:001 devopseasylearning2021/igor:001

                '''
            }
        }
    
        stage('docker login') {
            steps {
                sh '''
                docker login -u $USERNAME -p $PASSWORD
                '''
            }
        }
    
        stage('docker push') {
            steps {
                sh '''
                docker push devopseasylearning2021/igor:001
                '''
            }
        }



    }







}



