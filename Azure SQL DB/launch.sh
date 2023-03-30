#!/bin/bash
terraform plan -out main.tfplan
terraform apply "main.tfplan"
terraform output sqlserver_name
terraform output sqlserver_admin_password
terraform output sqlserver_admin_username