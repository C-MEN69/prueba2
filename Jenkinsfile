pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/C-MEN69/prueba2.git'
        GIT_CREDENTIALS_ID = 'github-token'
    }

    stages {
        stage('Clonar repositorio') {
            steps {
                git credentialsId: "${GIT_CREDENTIALS_ID}", url: "${GIT_REPO}"
            }
        }

        stage('Construir imagen Docker') {
            steps {
                sh 'docker build -t sample-app .'
            }
        }

        stage('Ejecutar aplicación') {
            steps {
                sh '''
                docker stop sample-app || true
                docker rm sample-app || true
                docker run -d --name sample-app -p 9999:9999 sample-app
                '''
            }
        }
    }
}
