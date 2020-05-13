pipeline {
    agent any
    stages {
        stage('build-and-push-docker-image-dev') {
            when{
                branch 'dev'
            }
            steps {
                withCredentials([usernamePassword(credentialsId: 'mody-docker-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
                    sh 'docker login -u $username -p $password'
                }
                sh 'make build_image'
                sh 'make push_image'
            }
        }

    }
}
