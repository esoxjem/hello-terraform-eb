resource "aws_elastic_beanstalk_application" "eb_application" {
  name = var.eb_application_name
}

resource "aws_elastic_beanstalk_environment" "eb_environment" {
  name                = var.eb_environment_name
  application         = aws_elastic_beanstalk_application.eb_application.name
  solution_stack_name = var.solution_stack_name
  tier                = var.tier


  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = var.vpc_id
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = var.IamInstanceProfile
  }
  setting {
    namespace = "aws:ec2:vpc"
    name      = "AssociatePublicIpAddress"
    value     = var.AssociatePublicIpAddress
  }
  setting {
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = join(",", var.public_subnets)
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = var.InstanceType
  }
  setting {
    namespace = "aws:ec2:vpc"
    name      = "ELBScheme"
    value     = var.ELBScheme
  }
  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = var.MinSize
  }
  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = var.MaxSize
  }

  # Environment
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = var.EnvironmentType
  }

  # Health
  setting {
    namespace = "aws:elasticbeanstalk:healthreporting:system"
    name      = "SystemType"
    value     = var.SystemType
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment:process:default"
    name      = "MatcherHTTPCode"
    value     = var.MatcherHTTPCode
  }

  # CloudWatch
  setting {
    namespace = "aws:elasticbeanstalk:cloudwatch:logs"
    name      = "StreamLogs"
    value     = var.StreamLogs
  }
  setting {
    namespace = "aws:elasticbeanstalk:cloudwatch:logs"
    name      = "DeleteOnTerminate"
    value     = var.DeleteOnTerminate
  }
  setting {
    namespace = "aws:elasticbeanstalk:cloudwatch:logs"
    name      = "RetentionInDays"
    value     = var.RetentionInDays
  }

  # Deployment Strategy
  setting {
    namespace = "aws:elasticbeanstalk:command"
    name      = "DeploymentPolicy"
    value     = var.DeploymentPolicy
  }

  # Environment Variables
  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "EaxmpleKey"
    value     = "ExampleValue"
  }
}