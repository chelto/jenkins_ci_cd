# jenkins_ci_cd
This contains all of the files needed to create a jenkins infrastructure with a manager and worker node setup using terraform and ansible.
This create a ssl cerfitificate on the hosted zone(which you should own) and install it

##########. Dependancies. ##########
-Ansible
-boto3
-Terraform
-aws-cli
-aws role with appropriate permissions attached
(recommend route 53 to auto add ssl certificate)
-ssh pair
-s3 config file bucket to store terraform statefiles

dns name ownership
dns hosted zones
aws route53 list-hosted-zones \
    --region us-east-1
    
###########  ssh pair    ###########
create SSH key pair for ssh'ing into instances once created. this create .pem file to be saved to home directory on machine
ssh-keygen -t rsa
ls  ~/.ssh/

###########   SSM   ###########
use SSM data in instances.tf to get latest instance id from aws


###########  ansible configure ###########  
create an ansible aws inventory file
this needs to be always named with a suffix to be picked up '_aws_ec2.yml'

files needed
jenkins-master-sample.yml
jenkins-worker-sample.yml
tf__aws_ec2.yml
