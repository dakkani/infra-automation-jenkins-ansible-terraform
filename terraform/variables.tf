variable "r9_username" {
  default = "ec2-user"
}

variable "d12_username" {
  default = "admin"
}

variable "public_key" {
  description = "SSH public key for VM access"
  type        = string
  default    = "merikunji"
}
