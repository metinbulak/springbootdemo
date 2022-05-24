pipeline {
  environment {
    registryCredential = "metinbulak/demospringboot"
  }
  agent any
  stages {
    stage(‘Build’) {
      steps{
        script {
          sh 'mvn clean install'
        }
      }
    }
    stage(‘Load’) {
      steps{
        script {
          app = docker.build("metinbulak/demospringboot")
        }
      }
    }
     stage(‘Deploy’) {
      steps{
        script {
          
		  docker.withRegistry( "https://registry.hub.docker.com", registryCredential ) {
           // dockerImage.push()
          app.push("latest")
          }
        }
      }
    }
    
  }
}