pipeline {
    agent any
    stages {
        stage('Clone repository') {
            steps {
                git branch: 'main', url: 'https://github.com/OliverWoodwardSky/nginx.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t nginx .'
            }
        }
        stage('Deploy to Docker Swarm') {
            steps {
                sh 'docker stack deploy -c docker-compose.yml nginx'
            }
        }
    }
}
