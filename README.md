# Freelance DevOps Portfolio Samples

Generic, anonymized sample files and diagrams for Arun Kumar's Freelance DevOps portfolio on freelancer.com.

These are **safe to upload** – no client names, no real credentials, no internal URLs.

## Portfolio Items

### 1. Secure CI/CD Pipeline with Built-in Security Scanning
- **File**: `1-cicd/github-actions-secure-cicd.yml`
- Multi-stage pipeline (Dev / QA / Prod)
- SonarQube quality gates + Semgrep SAST + Gitleaks + Trivy
- Manual approval for production + health-check rollback

### 2. Reusable Terraform Infrastructure for Multiple Environments
- **Files**: `2-terraform/main.tf` + `modules/networking/main.tf`
- Modular structure for compute, networking, security, monitoring
- Environment isolation (dev/qa/prod) on Azure & GCP

### 3. Multi-Tenant SaaS Platform Deployment on Azure
- Architecture diagram (generated image)
- Per-tenant isolation, Key Vault, custom domains, managed SSL
- HITRUST / SOC 2 aligned patterns

### 4. GCP Cloud Run Deployment Pipeline
- **File**: `4-cloudrun/cloudrun-deploy.yml`
- Containerized services, revision rollouts, Secret Manager, VPC connector
- Google-managed SSL custom domain

### 5. Containerized Microservices on AKS with Helm
- **File**: `5-aks/helm-values.yaml`
- Docker + Helm charts, health probes, HPA, RBAC, Azure Monitor
- Infrastructure automated with Terraform

## How to use on freelancer.com
1. Upload the corresponding diagram image for each portfolio item.
2. Link or attach the sample YAML / Terraform files (or put them in a public GitHub repo and link it).
3. Keep descriptions exactly as provided in the original script (no client names).

## Generated Diagrams
See the image files in each folder (or the main images generated for the portfolio).
