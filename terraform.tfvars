# https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html

# VPC
vpc_id                   = "vpc-xxxxxxxx"
public_subnets           = ["subnet-xxxxxxxx", "subnet-xxxxxxxx"]
AssociatePublicIpAddress = false

# EC2
InstanceType       = "t2.nano"
IamInstanceProfile = "aws-elasticbeanstalk-ec2-role"

# Eb Environment
tier                = "WebServer"
solution_stack_name = "64bit Amazon Linux 2 v3.3.5 running Python 3.8"

# Load Balancer
EnvironmentType = "LoadBalanced"
MinSize         = 1
MaxSize         = 2
ELBScheme       = "public"

# Health
SystemType      = "enhanced"
MatcherHTTPCode = 200

# Deployments
DeploymentPolicy = "Immutable"

# CloudWatch
StreamLogs        = false
DeleteOnTerminate = false
RetentionInDays   = 7
