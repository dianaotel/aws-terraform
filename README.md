# aws-terraform

A Terraform project that creates an AWS EC2 instance and initializes it with Docker and Jenkins. A Docker container is set up for Zalenium. 


## Prerequisites

1. You will need an AWS account, with an Access Key, a Security Group and a key pair.
2. You will need to download and install Terraform. 
Mac users can download Homebrew and run:

```
$ brew install terraform 
```

## Getting started

1. Download or clone the repository. 
2. Open the Command Prompt/Terminal and follow the commands:
```
cd path/to/the/project

terraform init

terraform plan

terraform apply
```
and answer 'yes' to the questions.

3. If you want to destroy the EC2 instance, run 

```
terraform destroy
```
and answer 'yes'. 

