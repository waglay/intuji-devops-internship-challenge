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
        sh "sudo chmod +x ./docker_install.sh"
        sh "./docker_install.sh"
      }
    }
  }
}
