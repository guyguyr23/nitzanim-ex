
/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'ubuntu' } }
    stages {
        stage('build') {
            steps {
                sh 'sudo apt-get install python3'
                sh 'export FLASK_APP=flaskr'
                sh 'export FLASK_ENV=development'
                sh 'sudo pip install --editable "src/app"'
                sh 'flask init-db'
            }
        }
    }
}
