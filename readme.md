# Welcome to my AWS/Terraform/GitHub Actions Demo!


This is a demo repo that leverages Terraform and GitHub Actions to deliver a simple mvp Gitops example.

<https://github.com/EmanuelBurgess/Git-Ops/blob/main/GHAdemo.pdf>

#### Features

- Automatically builds an EC2
- Automatically create a security group to allow traffic to that instance
- Automatically Networking (VPC/IGW/SUBNETs/ROUTETABLES)
- Autoconfigure a custom webpage
- Automatically use remote state
- Leverages GitHub Actions 

## How it works

Update code via git ---> run terraform test locally ---> push code via git ---> GitHub Actions trigger is activated on push ---> GitHub reads yml file in .github/workflows ---> performs delcared steps ---> terraform code gets checked and verified ---> terraform gets executed in branch designated workspace --> build completes
