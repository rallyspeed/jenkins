pipeline {
  agent any
  stages {
    stage('Deploy - Mobsf') {
      steps {
        sh '''"docker ps -f name=${containerName} -q | xargs --no-run-if-empty docker stop"
'''
      }
    }
  }
}