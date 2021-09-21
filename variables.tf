variable "profile" {
  type    = string
  default = "acloudguru"
}

variable "region-master" {
  type    = string
  default = "us-east-1"
}

variable "region-worker" {
  type    = string
  default = "us-west-2"
}

variable "external_ip" {
  type    = string
  default = "0.0.0.0/0"
}


# for counts of instances to maitain
variable "workers-count" {
  type    = number
  default = 3
}

variable "instance-type" {
  type    = string
  default = "t3.micro"
}


#Add the variable webserver-port to variables.tf
variable "webserver-port" {
  type    = number
  default = 8080
}


#Add the variable dnshost zone to variables.tf
variable "dns-name" {
  type    = string
  default = "cmcloudlab674.info."
}