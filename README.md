gcp-tf
├── Environments
│   ├── Development
│   │   ├── backend.tf              [Remote state in GCS]
│   │   ├── cloudbuild.yaml         [CI/CD pipeline: Auto-deploy]
│   │   ├── main.tf                [Calls modules]
│   │   ├── outputs.tf
│   │   ├── terraform.tfvars       [project_id = "dev-project-id"]
│   │   └── variables.tf
│   ├── Staging
│   │   ├── backend.tf              [Remote state in GCS]
│   │   ├── cloudbuild.yaml         [CI/CD pipeline: Manual approval]
│   │   ├── main.tf                [Calls modules]
│   │   ├── outputs.tf
│   │   ├── terraform.tfvars       [project_id = "staging-project-id"]
│   │   └── variables.tf
│   └── Production
│       ├── backend.tf              [Remote state in GCS]
│       ├── cloudbuild.yaml         [CI/CD pipeline: Manual approval]
│       ├── main.tf                [Calls modules]
│       ├── outputs.tf
│       ├── terraform.tfvars       [project_id = "production-project-id"]
│       └── variables.tf
├── Modules
│   ├── cloud_sql
│   │   ├── main.tf                [Creates Cloud SQL instance]
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── compute_instance
│   │   ├── main.tf                [Creates Compute Engine instance]
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── iam_user
│   │   ├── main.tf                [Manages IAM roles]
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── storage_bucket
│       ├── main.tf                [Creates Storage bucket]
│       ├── outputs.tf
│       └── variables.tf
├── outputs.tf
├── provider.tf
├── README.md
└── variables.tf


