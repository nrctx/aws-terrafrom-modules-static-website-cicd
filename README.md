# aws-terrafrom-modules-static-website-cicd

Serverless Cloud Portfolio

A high-performance, cost-effective static website hosted on AWS, featuring a serverless backend for contact form processing. This project demonstrates modern DevOps practices, including Infrastructure as Code (Terraform), CI/CD (GitHub Actions), and Cloud Security (SPF/DKIM/DMARC).
🚀 Live Demo URL: https://giovcloud.xyz


🏗️ Architecture

The project utilizes a completely serverless architecture to ensure 99.9% availability with near-zero monthly costs.

    Frontend: HTML5/CSS3/JavaScript hosted on Amazon S3.

    CDN: Amazon CloudFront for global content delivery and HTTPS encryption.

    DNS: Route 53 managing domain records and email security.

    API: API Gateway (HTTP API v2) providing a RESTful endpoint for the frontend.

    Compute: AWS Lambda (Python 3.12) processing form data.

    Email: Amazon SES for reliable delivery with SPF/DKIM/DMARC authentication.

🛠️ Tech Stack & Tools

    IaC: Terraform (Modularized)

    CI/CD: GitHub Actions

    Language: Python (Backend), JavaScript (Frontend)

    Cloud: Amazon Web Services (AWS)

    Security: IAM Least Privilege, SSL/TLS, DNSSEC, SES Domain Identity

📂 Project Structure
<details>
<summary>📂 Click to view Project Structure</summary>
.
│   .gitignore
│   README.md
│
├───.github
│   └───workflows
│           deploy-website.yaml
│
├───backend
│       index.py
│
├───src
│   │   index.html
│   │
│   ├───assets
│   │       IMG_7014.JPG
│   │
│   └───css
│           styles.css
│
└───terraform
    │   .terraform.lock.hcl
    │   backend.tf
    │   imports.tf
    │   main.tf
    │   outputs.tf
    │   terraform.tfstate
    │   terraform.tfstate.backup
    │   terraform.tfvars
    │   variables.tf
    │
    ├───.terraform
    │   │   terraform.tfstate
    │   │
    │   ├───modules
    │   │       modules.json
    │   │
    │   └───providers
    │       └───registry.terraform.io
    │           └───hashicorp
    │               └───aws
    │                   └───5.100.0
    │                       └───windows_amd64
    │                               LICENSE.txt
    │                               terraform-provider-aws_v5.100.0_x5.exe
    │
    └───modules
        ├───contact_backend
        │       main.tf
        │       outputs.tf
        │       variables.tf
        │
        ├───dns
        │       main.tf
        │       Variables.tf
        │
        ├───remote_backend
        │       main.tf
        │       outputs.tf
        │       variables.tf
        │
        ├───route53_acm
        │       main.tf
        │       outputs.tf
        │       variable.tf
        │
        ├───s3_cloudfront
        │       main.tf
        │       outputs.tf
        │       variables.tf
        │
        └───s3_website
                main.tf
                outputs.tf
                variables.tf
</details>

🤖 CI/CD Pipeline

The project features a fully automated deployment pipeline. On every push to the main branch, GitHub Actions:

    Packages the Python Lambda function.

    Validates and Applies the Terraform plan to update AWS infrastructure.

    Syncs frontend assets to the S3 bucket.

    Invalidates the CloudFront cache to ensure immediate global updates.

🛡️ Email Security & Deliverability

To ensure contact form messages never hit the spam folder, the following DNS security protocols are implemented via Terraform:

    SPF: Authorized Amazon SES to send emails on behalf of giovcloud.xyz.

    DKIM: Implemented cryptographic signatures for email integrity.

    DMARC: Established a policy for email servers to handle unauthenticated mail.

Future Roadmap

    [ ] Add CloudWatch Dashboards for real-time monitoring.

    [ ] Implement Google ReCaptcha v3 to mitigate bot spam.

    [ ] Transition to Terraform Workspaces for Dev/Prod environment isolation.

Author: Marlon G. Viloria

Contact: marlon.g.viloria@gmail.com
