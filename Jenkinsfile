pipeline {
    agent any
	properties {buildDiscarder(logRotator(artifactDaysToKeepStr: '', 
					      artifactNumToKeepStr: '', 
					      daysToKeepStr: '3', numToKeepStr: '5')),
		    disableConcurrentBuilds()}
    stages {
        stage('Example Build') {
            when {
                anyOf { 
			branch 'master'; branch 'staging' 
		}
            }
            steps {
                echo 'Hello World'
            }
        }
        stage('Example Deploy') {
            when {
                branch 'production'
            }
            steps {
                echo 'Deploying'
            }
        }
    }
}
