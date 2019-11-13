variable "subnet_ids" {  
  type = list(string)
}

variable "instance_class" {
  type = string
  default = "db.t2.micro"
}

variable "instance_name" {
  type = string
}

variable "username" {
  type = string
  default = "sa"
}

variable "password" {
  type = string
  default = "very_secure_password123"
}


