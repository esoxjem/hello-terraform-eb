variable "eb_application_name" {
  default = "esoxjem-test-app"
}
variable "eb_environment_name" {
  default = "esoxjem-test-env"
}
variable "solution_stack_name" {
  type = string
}
variable "tier" {
  type = string
}
variable "MinSize" {
  type = number
}
variable "MaxSize" {
  type = number
}
variable "InstanceType" {
  type = string
}
variable "IamInstanceProfile" {
  type = string
}
variable "vpc_id" {}
variable "public_subnets" {}
variable "AssociatePublicIpAddress" {
  type = bool
}
variable "EnvironmentType" {
  type = string
}
variable "ELBScheme" {
  type = string
}
variable "SystemType" {
  type = string
}

variable "MatcherHTTPCode" {
  type = number
}

variable "DeploymentPolicy" {
  type = string
}

variable "RetentionInDays" {
  type = number
}

variable "StreamLogs" {
  type = bool
}

variable "DeleteOnTerminate" {
  type = bool
}