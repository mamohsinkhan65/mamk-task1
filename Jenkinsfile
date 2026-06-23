pipeline {
    agent any
    stages {
        stage('Clone Code') {
            steps {
                checkout scm
            }
        }
        stage('Verify File Exists') {
            steps {
                sh 'test -f index.html && echo "Success: index.html found!"'
            }
        }
        stage('Copy File to Apache') {
            steps {
                sh 'sudo cp index.html /var/www/html/index.html'
            }
        }
    }
}
