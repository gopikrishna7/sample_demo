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
                bat "docker buid -t project2 ."
            }
        }
    }
}