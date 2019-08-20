variable "name_prefix" {
  description = "Enter your name or unique description here."
}

variable "instance_type" {
  description = "instance size (default: t2.micro)"
  type        = "string"
  default     = "t2.small"
  #default     = "t2.micro"
  #default     = "t3.large"
}

variable "ingress_cidr_block" {
  description = "WARNING: USING 0.0.0.0/0 IS INSECURE! (ex: <public.ipaddress>/32)"
  type        = "string"
  default     = "157.131.174.226/32"
  #default     = "0.0.0.0/0"
}
