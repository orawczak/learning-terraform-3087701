variable "ami_flter" {
  description = "Name and filter for AMI"
  type = object({
    name = string
    owner = string
  })

  default = {
    name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631"
  }    
}

variable "environment" {
  description = "Development environment"

  type = object({    
    name = string
    network_prefix = string
  })

  default = {
    name = "dev"
    network_prefix = "10.0"
  }
}