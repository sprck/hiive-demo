# hiive-demo-eks-deployment

Deploys an EKS cluster with networking, IAM roles, node groups, and an nginx startup page for testing.
.
## Features
- **VPC Architecture**: Public/private subnets with NAT gateways
- **IAM Integration**: Dedicated roles for EKS control plane & worker nodes
- **Managed Node Group**: Auto-scaling group with t3.medium instances
- **Access Control**: EKS Access Entries for IAM principals
- **Sample App**: NGINX deployment with LoadBalancer service

## Prerequisites
- AWS CLI configured with credentials
- Terraform ~> v5.0
- AWS IAM user with EKS permissions


## Configure Variables (terraform.tfvars)

- project_name = "hiive-eks-demo"
- region       = "your-region"
- vpc_cidr     = "choose cidr e.g 10.0.0.0/16"
- user_arn     = "arn:aws:iam::YOUR_ACCOUNT_ID:user/your-iam-user"

## Initialise and Deploy
 
 terraform init 
 terraform plan
 terraform apply 

## Key module Components

     File	                   Description
- eks-cluster.tf	              -              EKS cluster, node group, SSH key pair
- iam.tf	                      -              IAM roles/policies for EKS and nodes
- vpc.tf                     	  -              Networking components (VPC, subnets, routes)
- eks-deploy.tf             	  -              Kubernetes deployment/service resources

## Note
 
* Update
 eks-access-policy-arn in variables.tf:
 eks-access-policy-arn = "arn:aws:eks::YOUR_ACCOUNT_ID:cluster-access-policyAmazonEKSClusterAdminPolicy"


## Troubleshooting

* ConfigMap Conflicts: Ensure authentication_mode = "API" and remove any explicit aws-auth ConfigMap references

* Access Denied Errors: Verify IAM user has eks:CreateAccessEntry permissions
