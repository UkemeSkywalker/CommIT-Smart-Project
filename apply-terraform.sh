#!/bin/bash

# Set Terraform variables
PROJECT_ID="commit-smart"
REGION="us-east1"
TF_DIR="Terraform/"

# Navigate to the Terraform directory
cd $TF_DIR

# Initialize Terraform
terraform init

# Validate the Terraform configuration
terraform validate

# Plan the Terraform changes
terraform plan -out=tfplan \
  -var="project_id=$PROJECT_ID" \
  -var="region=$REGION"

# Apply the Terraform changes
terraform apply tfplan

# Clean up the Terraform plan file
#rm tfplan
