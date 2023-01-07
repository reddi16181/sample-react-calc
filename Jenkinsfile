pipeline {
     agent any
     tools {
         nodejs 'node14'
        }
     stages {
         stage('NodeSetup') {
            steps {
                sh 'npm config ls'
            }
        }
        stage("Build") {
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }
        stage("Deploy") {
            steps {
                sh 'rm -rf /var/jenkins_home/workspace/jenkins_react/build/'
                sh 'cp -r ${WORKSPACE}/build/ /var/jenkins_home/workspace/jenkins_react/'
            }
        }
    }
}