# Project Name

## Overview

This repository contains the Infrastructure as Code (IaC) files written using Terraform and Terragrunt to provision resources in AWS (Amazon Web Services) for a personal project. The backend is stored in AWS and utilizes the AWS authentication chain for secure access.

## Table of Contents

1. [Setup](#setup)
2. [Folder Structure](#folder-structure)
3. [Usage](#usage)
4. [Contributing](#contributing)
5. [License](#license)

## Setup

To use this project, you'll need to have Terraform and Terragrunt installed on your local machine. You'll also need valid AWS credentials configured.

1. Install Terraform by following the instructions on the [official website](https://www.terraform.io/downloads.html).
2. Install Terragrunt by following the instructions on the [official GitHub repository](https://github.com/gruntwork-io/terragrunt#install-terragrunt).
3. Configure AWS credentials by either setting up the AWS CLI or exporting your AWS access key ID and secret access key.

## Folder Structure

```
.
├───infrastructure-live-v1
│   │   backend.tf
│   │   provider.tf
│   │   terragrunt.hcl
│   │   
│   └───dev
│       │   env.hcl
│       │
│       └───us-east-1
│           │   region.tf
│           │
│           └───s3
│           |   └───iac-backend
│           |   |       terragrunt.hcl
│           |   |
│           |   └───sample-bucket
│           |   |       terragrunt.hcl
│           |   |
│           |   └───...
│           └───iam
│               └───...
└───infrastructure-modules
    ├───eks
    │       0-versions.tf
    │       1-eks.tf
    │       2-nodes-iam.tf
    │       3-nodes.tf
    │       4-irsa.tf
    │       5-outputs.tf
    │       6-variables.tf
    │
    ├───kubernetes-addons
    │       0-versions.tf
    │       1-cluster-autoscaler.tf
    │       2-variables.tf
    │
    ├───s3
    │       0-versions.tf
    │       1-s3.tf
    │       2-variables.tf
    │       3-output.tf
    │
    └───vpc
            0-versions.tf
            1-vpc.tf
            2-igw.tf
            3-subnets.tf
            4-nat.tf
            5-routes.tf
            6-outputs.tf
            7-variables.tf
```

- **infrastructure-live-v1/**: Contains environment-specific configurations for each stage (e.g., dev, staging, production).
- **infrastructure-modules/**: Contains reusable Terraform modules for provisioning AWS resources such as VPCs, EC2 instances, etc.

## Usage

1. Clone this repository to your local machine.
2. Navigate to the desired environment directory (e.g., `infrastructure-live-v1/dev`).
3. Initialize Terragrunt by running `terragrunt init`.
4. Apply the infrastructure changes by running `terragrunt apply`.
5. When prompted, review the planned changes and confirm to apply them.

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use and modify these files as you see fit.
