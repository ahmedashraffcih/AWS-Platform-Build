# AWS-Platform-Build: Building a Scalable Cloud Platform with AWS EKS & DevOps Tools

Welcome to the **AWS-Platform-Build**! In this project, I will walk through the process of building a scalable and secure cloud platform using **AWS EKS** and essential **DevOps** tools. This repository serves as a step-by-step guide where I’ll learn and implement key cloud concepts, tools, and best practices for deploying a full-fledged platform in the cloud.

## Table of Contents

- [Introduction](#introduction)
- [What I’ll Be Building](#what-ill-be-building)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Architecture Overview](#architecture-overview)
- [Deployment Steps](#deployment-steps)
- [Execution Checklist](#execution-checklist)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Contributing](#contributing)
- [License](#license)

---

## Introduction

In this project, I’ll be working hands-on to build a cloud platform using **AWS** and **EKS (Elastic Kubernetes Service)** while integrating various **DevOps tools**. Throughout the project, I will go through several critical steps like Infrastructure as Code (IaC), setting up CI/CD pipelines, implementing monitoring tools, and deploying applications on Kubernetes.

This lab is structured to provide me with the skills necessary to design, deploy, and monitor a full-scale cloud-based platform using industry-standard tools. I’ll also be able to troubleshoot, optimize, and scale my infrastructure as needed.

For more detailed instructions and videos, please refer to the original repository and follow the YouTube channel.

- **[Original GitHub Repository](https://github.com/garage-education/DataSquadLab)**
- **[YouTube Channel](https://www.youtube.com/@GarageEducation)**

---

## What I’ll Be Building

### DevOps Tools 🛠️

I will be using the following DevOps tools and concepts throughout the project:

- **Infrastructure as Code (IaC)**: Terraform 📜
- **CI/CD**: GitHub Actions ⚙️
- **Observability**: Prometheus, Loki, Grafana 📊
- **Deployment Management**: ArgoCD

### Backend Configuration

My application’s backend will consist of:

- **Database**: Postgres RDS
- **Application**: Spring application deployed on AWS EKS

### Data Platform Components

I will build the data platform with the following components:

- **Data Lake**: Amazon S3
- **Orchestration**: Airflow
- **ELT Process**: DBT
- **Data Ingestion**: AWS Database Migration Service (DMS)
- **Data Warehouse**: Amazon Redshift
- **Reporting Tool**: Metabase

---

## Prerequisites

Before diving into the labs, I'll need to ensure I have the following tools and services set up:

1. **AWS Account**: Required for provisioning cloud resources.
2. **Terraform**: Installed and configured on my local machine to automate infrastructure provisioning.
3. **Docker**: For building and running containers locally.
4. **kubectl**: To interact with the Kubernetes clusters for managing deployments.
5. **Helm** (optional): To manage Kubernetes applications.
6. **GitHub Account**: For integrating the CI/CD pipeline with GitHub Actions.

---

## Getting Started

I will follow these steps to get started with the project:

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/your-username/AWS-Platform-Build.git
    cd AWS-Platform-Build
    ```

2. **Configure AWS CLI**:
    I will set up AWS CLI by following the [AWS CLI Configuration Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) to ensure I can authenticate and interact with AWS resources.

3. **Set Up Terraform**:
    - I’ll create a `terraform.tfvars` file based on the example provided (`terraform.tfvars.example`) and configure it with my AWS credentials and resource specifications.
    - I’ll run Terraform commands to initialize and apply the infrastructure:
    ```bash
    terraform init
    terraform plan
    terraform apply
    ```

4. **Deploy Kubernetes Resources**:
    I will set up **EKS** and deploy the application using the provided Kubernetes manifests:
    ```bash
    kubectl apply -f eks-manifest.yaml
    ```

5. **Set Up CI/CD Pipeline**:
    - I’ll configure GitHub Actions for CI/CD integration by following the templates provided in the `.github/workflows` directory.

---

## Architecture Overview

Here’s a diagram of the platform architecture I’ll be building:

![Architecture Diagram](path-to-your-architecture-diagram.png)

This architecture consists of:

- **AWS EKS** to manage containerized applications.
- **Terraform** for provisioning and managing cloud resources.
- **Prometheus, Grafana, and Loki** for observability and monitoring.
- **ArgoCD** for managing deployments.

---

## Deployment Steps

### Step 1: Terraform Infrastructure Setup

I’ll begin by defining the infrastructure using Terraform, setting up resources like:

- VPC and subnets for network isolation.
- RDS for PostgreSQL databases.
- S3 buckets for data storage.

### Step 2: Kubernetes Setup with EKS

Next, I’ll set up **AWS EKS** to manage my Kubernetes clusters and deploy the Spring application.

- I’ll configure the EKS cluster, ensuring that the necessary node groups, security groups, and IAM roles are set up.
- Then, I will deploy my Spring application on EKS.

### Step 3: CI/CD Pipeline

I’ll configure GitHub Actions to automate the deployment process, setting up a pipeline that will:

- Automatically deploy my application on EKS whenever new code is pushed to GitHub.

### Step 4: Monitoring and Observability

I’ll implement observability using **Prometheus**, **Loki**, and **Grafana**, which will help me monitor the health and performance of my application and infrastructure.

---

## Execution Checklist

Here’s my progress checklist:

- [ ] **Terraform Setup**: Create and apply infrastructure using Terraform.
- [ ] **EKS Cluster**: Set up EKS and deploy the application.
- [ ] **CI/CD Pipeline**: Configure GitHub Actions for automatic deployments.
- [ ] **Observability**: Set up Prometheus, Grafana, and Loki for monitoring.
- [ ] **ArgoCD**: Set up deployment management using ArgoCD.

---

## Frequently Asked Questions

- **Should I have one account for dev, uat, and prod?**
- **How do I handle in-place modifications for critical use cases (e.g., changing storage for the database)?**
- **Can I use advanced analytics functions with MongoDB?**

---

## Contributing

If you'd like to contribute to this project or suggest improvements, feel free to open an issue or create a pull request. All contributions are welcome!

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
