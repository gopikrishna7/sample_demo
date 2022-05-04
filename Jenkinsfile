pipeline{
    agent any{
        satges{
            stage('checkouit'){
                steps{
                    git branch: 'master',
                    url: 'https://github.com/gopikrishna7/sample_demo.git'
                }
            stage('build'){
                steps{
                    bat "docker buit -t project2 ."
                }
            }
            }
        }
    }
}