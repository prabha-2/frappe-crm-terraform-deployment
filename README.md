# Frappe CRM Deployment on AWS EC2 using Terraform

## Project Overview

This project automates the deployment infrastructure for Frappe CRM on AWS EC2 using Terraform and EC2 User Data.

The infrastructure includes AWS networking, security groups, an Ubuntu EC2 instance, and automated application installation using the Frappe deployment installer.

## Architecture

- AWS VPC and public subnet
- Internet Gateway and route table
- Security Group
- Ubuntu EC2 instance
- 30 GB gp3 EBS volume
- Docker-based Frappe CRM installation

## Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- Ubuntu 22.04
- Docker
- Frappe CRM

## Deployment Workflow

1. Provision AWS infrastructure using Terraform.
2. Configure networking and security groups.
3. Launch the Ubuntu EC2 instance.
4. Execute EC2 User Data.
5. Install the required dependencies.
6. Configure the Frappe CRM deployment.

## Terraform Validation

```bash
terraform fmt -recursive
terraform init
terraform validate
terraform plan
```

## Security

- Restrict SSH access to trusted IP addresses.
- Allow HTTP and HTTPS traffic.
- Keep database and Redis ports private.
- Avoid hardcoding AWS credentials.
- Protect Terraform state files and private keys.

## Project Objective

Demonstrate Infrastructure as Code using Terraform and automate Frappe CRM deployment on AWS EC2.
