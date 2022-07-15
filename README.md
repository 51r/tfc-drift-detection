# Terraform Cloud Drift Detection

This repo was used to test Terraform Cloud Drift Detection function.


## Prerequisites
1. TFCB Organization
2. Drift Detection enabled


## How to use the repo
1. Connect the repo to your Terraform Cloud For Business organization.
2. Execute the plan.
3. Change the security group inside AWS or via AWS CLI.
4. Refresh the state in Terraform Cloud or wait 24h to check if the Drift Detection works.
