pipeline{
    agent any
    stages{
        stage('checkouit'){
            steps{
                git branch: 'master',
                url: 'https://github.com/gopikrishna7/sample_demo.git'
            }
        }
        stage('build'){
            steps{
                sh "docker build -t gopikrishna99899/project:${env.BUILD_NUMBER} ."
            }
        }
        stage('docker login and push'){
            environment{
                SERVER_CRED=credentials('dockerhub')
            }
            steps{
                sh "docker login -u gopikrishna99899 -p ${SERVER_CRED_PSW}"
                sh "docker push gopikrishna99899/project:${env.BUILD_NUMBER}"
            }


        }
        stage('deploy to k8'){
            steps{
                sh "kubectl apply -f pod.yml"
            }
            
        }
    }
}