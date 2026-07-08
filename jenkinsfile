pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Clona tu repositorio desde GitHub
                git branch: 'main', url: 'https://github.com/salazarhidalgo37-dotcom/orga-geovanny-salazar.git'
            }
        }
        stage('Down') {
            steps {
                // Detiene el ambiente si ya está corriendo
                sh 'docker compose down'
            }
        }
        stage('Up') {
            steps {
                // Levanta el ambiente con WordPress y MySQL
                sh 'docker compose up -d'
            }
        }
        stage('Verify') {
            steps {
                // Verifica que los contenedores estén activos
                sh 'docker ps'
            }
        }
    }
}
