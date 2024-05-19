# intuji-devops-internship-challenge
To install docker i have used ec2-instance in AWS. Amazon_Linux-2 is used. For installing the docker installation script needs to be executed. But to execute the command first it should have executable permission which can be given as 'chmod +x ./docker_install.sh'
Here in order to launch the project in container, the given git link should be cloned and a index.php file should be added in same level as composer.json. The index.php file must contain the Usage in the git repo provided to us.

Here, additionally shell script for Jenkins Setup is provided along with a Jenkinsfile to write the CI/CD code to build the image, push the image and use docker compose to run the image. So, a docker_compose.yml file is also provided. The index.php file is also added here and phpprojectcheck.sh is added to check if the cloned php-hello-world project already exists or not while doing the automation.

The Jenkins server was setup in amazon-linux-2, AWS, and all the necessary plugins asked while proceeding to install were installed and additional docker plugins to build and push the image were added. The name of the plugins are docker pipeline and CloudBees Docker Build and Publish.

A pipeline job was build and periodic build was triggered for every minute. The screenshots of build histroy are provided below:
![image](https://github.com/waglay/intuji-devops-internship-challenge/assets/138477319/ad2843ee-d5d7-4e01-8ee2-8af4719c1724)

After successful pushing of image the updated dockerhub registry:
![image](https://github.com/waglay/intuji-devops-internship-challenge/assets/138477319/81be7b52-6608-4af4-bf67-81410dae92a2)

And the successful launching of the container with docker compose:
![image](https://github.com/waglay/intuji-devops-internship-challenge/assets/138477319/be07be69-7679-4f15-bbc4-f5c85649f821)


Note: all the shell scripts before executions should be given permission as "chmod +x (example.sh)". 
      Also, the jenkins user must be added to the docker group and the credentials to the dockerhub should be provided in Manage Jenkins-          >credentials->system->addcredentials
