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
      sh "cp Dockerfile index.php php-hello-world/"
      sh "cd php-hello-world && docker build -t php:$BUILD_NUMBER ."
      }
    }
    stage("pushing to dockerhub"){
      steps{
      sh "docker tag php:$BUILD_NUMBER waglay14/php-app-intuji:$BUILD_NUMBER && docker push waglay14/php-app-intuji:$BUILD_NUMBER"
      sh "docker tag php:$BUILD_NUMBER waglay14/php-app-intuji:latest && docker push waglay14/php-app-intuji:latest"
      }
    }
    stage("removing previous images"){
      steps{
      sh "docker rmi php:$BUILD_NUMBER"
      sh "docker rmi waglay14/php-app-intuji:$BUILD_NUMBER"
      sh "docker rmi waglay14/php-app-intuji:latest"
      }
    }
    stage("launching app from compose"){
     steps{
      sh "docker-compose up -d"
      }
    }
      
  }
}
