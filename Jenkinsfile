
/* Requires the Docker Pipeline plugin */
pipeline {
    agent {         docker {
            image 'ubuntu:latest'
            args '--user=root'
        } }
    
    stages {
        stage('build') {
            steps {
                sh 'export FLASK_APP=flaskr'
                sh 'export FLASK_ENV=development'
                sh 'pip install --editable "src/app"'
                sh 'flask init-db'
            }
        }
    }
}
