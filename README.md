## How to run ansible playbook
Ansible definitions are applied to custom server without any purpose. Kubernetes is running in OKE (EKS).
```
ansible-galaxy install -p roles/ -r roles/requirements.yml
ansible-playbook -i hosts setup.yaml -v -u your_username --ask-become
```
## Prerequisites
- Kubectl
- Docker


## Usage of deployment script
Script will build fresh docker image and push it to dockerhub repository.
-  Check ansible hosts file
-  Connect to desired k8s cluster
-  Login to dockerhub/ECR
- Update version in "deploy.sh" and run this script


##  Notes
Basic auth password for "/admin" endpoint is "password"
For the test purposes use following entry in your hosts file
```
138.2.172.205 phrase.abv.com
```

## Improvements
#### Following endpoints/functions were added to easily flush dbs:
- /drop_db
- /create_db
- /redis_flush

#### Security
This repo consists includes multiple secrets just for easier review of the task.
Any ansible secrets should by encrypted using ansible-vault and k8s secrets encrypted using SOPS.
Same applies for secrets in Python code. Might be passed as ENVs during startup from k8s secrets.

#### Deployment implemetation
Deploy ingress controller through Helm
Instead of manual work with shell script use Flux, CI/CD, Helm


