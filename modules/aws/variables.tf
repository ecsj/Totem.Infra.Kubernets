variable "cluster_name" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "aws_profile" {
  type        = string
  description = "The AWS profile to use to execute the commands"
  default     = "default"
}