
/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'python3 --version'
                sh 'export FLASK_APP=flaskr'
                sh 'export FLASK_ENV=development'
                sh 'pwd'
                sh 'ls'
                sh 'pwd'                    
                sh 'pip install --editable "src/app"'
                sh 'ls -a'
                sh 'flask init-db'
            }
        }
    }
}
