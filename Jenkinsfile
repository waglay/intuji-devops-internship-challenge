pipeline{
  agent any
  environment {
    credentials = "Dockerhub"
    imageName = "waglay14/php-app-intuji"
    registry = ""
  }
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
      sh "cp Dockerfile index.php php-hello-world/"
      }
    }
    stage ("Build Image"){
      steps{
        script {
          dockerImage = docker.build (imageName + ":$BUILD_NUMBER", "-f php-hello-world/")
        }
      }
    }
    stage("pushing to dockerhub"){
      steps{
      script {
        docker.withRegistry('',credentials){
          dockerImage.push("$BUILD_NUMBER")
          dockerImage.push("latest")
        }
      }
      }
    }
    stage("removing previous images"){
      steps{
      sh "docker rmi $imageName:$BUILD_NUMBER"
      }
    }
    stage("launching app from compose"){
     steps{
      sh "docker-compose up -d"
      }
    }
      
  }
}
