pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                git 'https://github.com/salazarhidalgo37-dotcom/orga-geovanny-salazar.git'
            }
        }

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
