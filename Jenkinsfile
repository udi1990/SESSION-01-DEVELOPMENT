pipeline {
    agent any

    stages {
        stage('Hello1') {
            steps {
                sh '''
                whoami
                id
                '''
            }
        }    

        stage('Hello2') {
            steps {
                sh '''
                mkdir ok2 || true
                cd ok2
                '''
            }
        }

        stage('Hello3') {
            steps {
                sh '''
                touch ok1 || true
                ls
                '''
            }
        }

        stage('Hello4') {
            steps {
                sh '''
                pwd
                cd ..
                '''
            }
        }
    }
}

