pipeline {
    agent any
    stages {
        stage('Clonar repositorio') {
            steps {
                git 'https://github.com/tu-usuario/mi-proyecto.git'
            }
        }

        stage('Construir imagen Docker') {
            steps {
                script {
                    docker.build('sample-app', '.')
                }
            }
        }

        stage('Ejecutar aplicación') {
            steps {
                script {
                    // Eliminar contenedor previo si existe
                    sh 'docker rm -f sample-app || true'
                    
                    // Ejecutar contenedor exponiendo el puerto 9999
                    sh 'docker run -d -p 9999:9999 --name sample-app sample-app'
                }
            }
        }
    }
}
