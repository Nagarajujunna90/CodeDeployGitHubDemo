#Spring-boot-sample------AWS-ECR,ECS,Code build
===============================================
1.Create ECR in AWS.

2.Create SpringBoot project.
3.Add buildspec.yml file (need to mention ECR repo URI ).
4.Add docker file

5.Create Repo in GitHub/CodeCommit/any repo.
6.Push SpringBoot app into Repo
7.Create Code build-Here image will push to ECR. 
8.ECS->
	i.Create Cluster 
	ii.Create Task defination(which is required Image URI from Docker/ECR)
	iii.Assign Task defination to Clustor 
	Note:Create Security Group for HTTP port

User Data need to add in EC2 instance while creating,because we no need to run after start up
==============================================================================================
#!/bin/bash
yum update -y
yum install java-17 -y
yum install ruby -y
yum install wget -y
cd /home/ec2-user
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
sudo service codedeploy-agent status
sudo wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven


Need to assign role for both EC2 & Code Deploy
--------------------------------------
EC2RoleForCodeDeploy