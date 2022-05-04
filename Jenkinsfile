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
                bat "docker build -t gopikrishna99899/project2:${env.BUILD_NUMBER} ."
            }
        }
        stage('docker login and push'){
            environment{
                SERVER_CRED=credentials('dockerhub')
            }
            steps{
                bat "docker login -u gopikrishna99899 -p ${SERVER_CRED_PSW}"
                bat "docker push gopikrishna99899/project2:${env.BUILD_NUMBER}"
            }


        }
        stage('deploy to k8'){
            steps{
                script{
                    kubernetesDeploy(
                        configs: "pod.yml",
                        kubeconfigID: "kuberenetes_config",
                        enableConfigSubstitution: true
                    )
                }
            }
            
        }
    }
}