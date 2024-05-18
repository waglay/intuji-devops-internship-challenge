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
        sh "chmod +x ./docker_install.sh"
        sh "./docker_install.sh"
      }
    }
    stage("pulling git project for image creation"){
      sh "git clone https://github.com/silarhi/php-hello-world.git"
      sh "ls"
      sh "docker images"
    }
  }
}
