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
      sh "docker images"
      }
    }
  }
}
