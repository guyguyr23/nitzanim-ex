
/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'ubuntu' } }
    stages {
        stage('build') {
            steps {
                apt-get install python3
                export FLASK_APP=flaskr
                export FLASK_ENV=development
                pip install --upgrade pip
                pip install --editable "src/app"
                flask init-db
            }
        }
    }
}
