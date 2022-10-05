pipeline{

    agent any
    tools {
        maven 'Maven'
    }
    stages {
    stage("build")
    {
        steps {
            script{
                sh 'docker build -t abdoumin/demo-app:2.0 .'
            }
        }
    }


    stage("deploy")
        {
            steps {
            echo "building the docker image..."
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-repo', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        sh "echo $PASS | docker login -u $USER --password-stdin"
                        sh "docker push abdoumin/demo-app:2.0"
                        sh "docker run -p 8081:8081 abdoumin/demo-app:2.0 "
                    }}
        }
    }
    }
