# awsnodeportmgmt
project to automate the update of NLB and the update of Security Group with added/deleted ports 


1. create/update NLB
2. create/update/delete target group
3. create/update security group

The following environmental variables must be defined in nodeports.yaml:
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_DEFAULT_REGION
- VPC_ID
- SUBNET1
- SUBNET2
- SUBNET3
- WORKER1
- WORKER2
- WORKER3

Create service account "nodeports" and it give it the following permissions:
oc adm policy add-cluster-role-to-user view -z nodeports -n namespace

Create security group nodeports
Create NLB nodeports and assign the SG to the NLB
Assign the SG to the worker nodes you chose earlier/above

apply nodeports.yaml

connect into the container and run the playbook:

oc rsh nodeports-xxxxx

cd /home/app
ansible-playbook run.yaml


Ideally this should be turned into a cronjob that runs frequently
You can replace command with ansible-playbook and args with /home/app/awsnodeportmgmt/playbooks/run.yaml
