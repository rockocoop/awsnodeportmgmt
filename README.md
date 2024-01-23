# k8sawsnodeportmgmt
project to automate the update of NLB and the update of Security Group with added/deleted ports 


1. create/update NLB
2. create/update/delete target group
3. create/update security group

The following environmental variables must be defined:
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




https://docs.ansible.com/ansible/latest/collections/community/aws/index.html
https://docs.ansible.com/ansible/latest/collections/community/aws/elb_network_lb_module.html#ansible-collections-community-aws-elb-network-lb-module
https://docs.ansible.com/ansible/latest/collections/community/aws/elb_target_group_module.html#ansible-collections-community-aws-elb-target-group-module
https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_security_group_module.html
