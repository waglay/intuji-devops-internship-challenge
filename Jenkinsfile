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
      sh "chmod +x phpprojectcheck.sh && ./phpprojectcheck.sh"
      sh "ls"
      sh "cp Dockerfile php-hello-world/"
      sh "docker build -t php:$BUILD_NUMBER ."
      }
    }
  }
}
