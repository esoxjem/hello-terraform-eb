# https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html

vpc_id                   = "vpc-xxxxxxxx"
InstanceType             = "t2.nano"
IamInstanceProfile       = "aws-elasticbeanstalk-ec2-role"
MinSize                  = 1
MaxSize                  = 2
public_subnets           = ["subnet-xxxxxxxx", "subnet-xxxxxxxx"] # Service Deployment Subnets
tier                     = "WebServer"
solution_stack_name      = "64bit Amazon Linux 2 v3.3.5 running Python 3.8"
AssociatePublicIpAddress = true
LoadBalancerType         = "classic"
ELBScheme                = "public"
SystemType               = "enhanced" # health reporting