pipeline {
    agent {
        docker {
            image 'docker:24.0'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    stages {
        stage('Down') {
            steps {
                sh 'docker compose down'
            }
        }

        stage('Up') {
            steps {
                sh 'docker compose up -d'
            }
        }

        stage('Verify') {
            steps {
                sh 'docker ps'
            }
        }
    }
}

