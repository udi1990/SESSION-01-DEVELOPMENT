pipeline {
    agent any

    stages {
        stage('clear image') {
            steps {
                sh '''
                sudo docker rm -f $(docker ps -aq) || true
                '''
            }
        }    

        stage('build image') {
            steps {
                sh '''
                sudo chown root:docker /var/run/docker.sock
                 sudo docker build -t nigieu:001 .
                '''
            }
        }

        stage('check image') {
            steps {
                sh '''
                sudo docker images
                '''
            }
        }

        stage('launch container') {
            steps {
                sh '''
                 sudo docker ps -a
                #sudo docker run -i --name nigieu nigieu:001
                '''
            }
        }
    }
}

