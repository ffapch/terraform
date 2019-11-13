variable "vpc_id" {
  description = "vpc id for public subnet"
  type = string
}

variable "ig_id" {
  description = "internet gateway id"
  type = string
}

variable "cidr_block" {
  description = "cidr block our subnet"
  type = string
}

variable "tags" {
  description = "tags for subnet"
  type = map(string)
  default = {
      Name = "Public subnet for vpc"
      Description = "Managed by terraform"
  }
}
