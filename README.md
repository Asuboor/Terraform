## Overview:

Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp. It allows you to define, provision, and manage infrastructure resources such as servers, databases, networks, and services using a high-level configuration language called HashiCorp Configuration Language (HCL) or JSON.

### Key Features of Terraform:

1. **Infrastructure as Code (IaC):**
    - Terraform allows you to define your infrastructure in code, which can be version-controlled, shared, and reused, just like software code. This makes infrastructure management more predictable and automated.
2. **Platform-Agnostic:**
    - Terraform is cloud-agnostic, meaning it can manage resources across multiple cloud providers like AWS, Google Cloud, Azure, and even on-premises environments. This is achieved through the use of *providers*, which are plugins that allow Terraform to interact with different APIs.
3. **Execution Plan:**
    - Terraform generates an execution plan (often referred to as a "plan") that shows what changes it will make to your infrastructure before applying those changes. This plan allows you to review and approve changes before they are made.
4. **Resource Graph:**
    - Terraform creates a graph of all your resources, which helps it determine the correct order to create or destroy resources. This ensures that dependencies between resources are respected, reducing the risk of errors.
5. **State Management:**
    - Terraform keeps track of the state of your infrastructure in a state file. This state file is critical because it helps Terraform understand what resources it has created and how they relate to one another. The state file can be stored locally or remotely, enabling collaborative workflows.
6. **Idempotency:**
    - Terraform is designed to be idempotent, meaning you can apply the same configuration multiple times, and Terraform will only make the necessary changes to bring the infrastructure to the desired state. It avoids unnecessary modifications if the infrastructure is already in the desired state.
7. **Extensibility:**
    - Terraform's modularity allows you to create reusable modules that encapsulate common configurations. You can also extend Terraform with custom providers and provisioners to meet specific needs.

### Common Use Cases:

- **Multi-Cloud Management:** Managing infrastructure across multiple cloud providers with a single tool.
- **Environment Management:** Creating consistent environments for development, testing, and production.
- **Automated Infrastructure Deployment:** Automating the deployment of complex infrastructure setups.
- **Infrastructure Version Control:** Keeping your infrastructure configurations in version control systems like Git.

# Project- Static Website Hosting on AWS S3

## Steps:

1. **Initialize Provider**: Configure and initialize the AWS provider for Terraform.
2. **Create a Bucket**: Define and create an S3 bucket to store the static website files.
3. **Initialize Ownership Control**: Set up ownership control policies for the bucket to manage access.
4. **Make Bucket Public**: Configure the bucket to be publicly accessible.
5. **Make Bucket ACL Public**: Set the bucket’s Access Control List (ACL) to allow public read access.
6. **Enable Static Website Hosting**: Configure the bucket to serve static website content.
7. **Upload HTML Files**: Upload HTML files to the bucket with public read permissions.
8. **Configure Website Settings**: Set up necessary website configurations for the S3 bucket.
9. **Output Website Endpoint**: Provide the URL endpoint where the static website can be accessed.

## Find more about the project at https://abdulsuboor.notion.site/Project-Static-Website-Hosting-on-AWS-S3-677cf892ae2c4b9095510c329fd56261?pvs=74
