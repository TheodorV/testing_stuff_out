variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "/home/jenkins/.ssh/mykey.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-03a1a94b7707461d3"
  }
}

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}

variable "JENKINS_VERSION" {
  default = "2.204.1"
}

variable "TERRAFORM_VERSION" {
  default = "0.12.18"
}

variable "APP_INSTANCE_COUNT" {
  default = "1"
}
