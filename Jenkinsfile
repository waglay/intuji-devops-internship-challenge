pipeline{
  agent any
  stages{
    stage("Echo Hello Just for fun"){
      steps{
         sh "echo hello"         
      }
    }
    stage("Install docker and docker-compose"){
      steps{
        sh "pwd"
        sh "ls"
        sh "sudo chmod +x intuji-devops-internship-challenge/docker_install.sh"
        sh "intuji-devops-internship-challenge/docker_install.sh"
      }
    }
  }
}
