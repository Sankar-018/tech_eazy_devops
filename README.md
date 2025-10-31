Terraform EC2 Deployment Project

Overview

# Terraform EC2 Deploy — Tech Eazy DevOps

## Project summary
This project demonstrates a simple Infrastructure-as-Code deployment that:
- Creates an AWS EC2 instance (Ubuntu 22.04 LTS, t2.micro) using Terraform.
- Installs Java, Maven and Git on the instance.
- Clones the sample repository `Trainings-TechEazy/test-repo-for-devops`, builds it with Maven and runs the Spring Boot JAR.
- Schedules instance shutdown after 60 minutes to avoid charges.
- All automation is driven by `main.tf`, `variables.tf` and `scripts/setup.sh`.

Project Structure

terraform-ec2-deploy/
    
    ├── main.tf # Terraform configuration (EC2, SG, keypair)
    ├── variables.tf # Terraform variables (region, instance type, AMI, key path)
    ├── scripts/
    │     └── setup.sh # User-data script: installs deps, clones repo, builds & runs app
    ├── .gitignore # Files to ignore (target/, .terraform/, tfstate, logs)
    └── README.md

Prerequisites

Before getting started, make sure you have:

An active AWS account

Terraform installed on your local machine

AWS Access Key and Secret Key configured

Steps to Deploy

    1.Initialize Terraform:
        terraform init
    2.Preview changes:
        terraform plan
    3.Apply (create resources):
        terraform apply 

 Github setup
 2 Branches

    main – Stable branch for production-ready code

    terraform-deploy – Development branch for Terraform configuration

Created Pull request from terraform-deploy branch to main branch



✅ Summary Output

After terraform apply, you will have:

1 EC2 instance running on AWS.

Java app gets auto-deployed and accessible on port 8080.

Terraform managing all infra as code.



