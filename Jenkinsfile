pipeline{
  agent any
  stages{
    stage("Echo Hello Just for fun"){
      steps{
         sh "echo hello"         
      }
    }
    stage("pulling git project for image creation"){
      steps{
      sh "git clone https://github.com/silarhi/php-hello-world.git"
      sh "ls"
      sh "docker images"
      }
    }
  }
}
