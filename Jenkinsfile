pipeline {
    agent any

    stages {
        stage('Pre-Build') {
            steps {
                echo 'Successfull building...'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                echo 'Running docker build...'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Push') {
            steps {
                echo 'Pushing...'
                echo 'Running docker push...'
            }
        }
    }
    
    post {
        success {
            echo 'Success...'
            echo 'Send status Success to Mail, Telegram, Slack...'
        }
        failure {
            echo 'Failure...'
            echo 'Send status Failure to Mail, Telegram, Slack...'
        }
    }

}
