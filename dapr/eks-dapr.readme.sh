eksctl create cluster --name=eksdemo1 --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster eksdemo1 --approve
eksctl create nodegroup --cluster=eksdemo1 --region=us-east-1 --name=eksdemo1-ng-public1 --node-type=t3.medium --nodes=3 --nodes-min=3 --nodes-max=5 --node-volume-size=20 --ssh-access --ssh-public-key=kube-demo --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access 


add 30000 to 32000 in sg group of node group

dapr init -k


create aws memory db redis store
 - put in the same vpc as eks
 - put in the same subnet as our node group
 - add SG to access 6379 from anywhere
 - add acl with user redis and a password

 