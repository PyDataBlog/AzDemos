#!/bin/bash
terraform plan -out main.tfplan
terraform apply "main.tfplan"
terraform output kube_config > $(pwd)/config
kubectl --kubeconfig config cluster-info