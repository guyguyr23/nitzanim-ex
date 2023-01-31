
/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'python:3.10.7-alpine' args '--user=root' } }
    
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
