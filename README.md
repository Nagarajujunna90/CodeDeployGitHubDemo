#Spring-boot-sample------AWS-ECR,ECS,CodeBuild Example
========================================================
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
