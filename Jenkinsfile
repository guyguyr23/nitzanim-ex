
/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'maven:3.8.7-eclipse-temurin-11' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
                sh 'export FLASK_APP=flaskr'
                sh 'export FLASK_ENV=development'
                sh 'pip install --editable .'
                sh 'flask init-db'
            }
        }
    }
}
