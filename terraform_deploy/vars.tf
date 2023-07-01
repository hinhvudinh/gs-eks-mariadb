variable "aws_region" {
  default     = null
  type        = string
  description = "AWS region"
}

variable "resource_prefix" {
  default     = null
  type        = string
  description = "resource prefix"
}

variable "mysql_instance_class" {
  default     = null
  type        = string
  description = "Mysql instance size"
}

variable "mysql_master_user_name" {
  default     = null
  type        = string
  description = "Mysql master user name"
}

### Define EKS variables ###################################
variable "cluster_name" {
  default     = "eks-cluster"
  type        = string
  description = "eks cluster name"
}

variable "cluster_node_name" {
  default     = "eks-node"
  type        = string
  description = "eks cluster node name"
}

variable "node_type" {
  default     = ["t3.small"]
  type        = list(any)
  description = "eks cluster node type"
}

variable "node_desired_size" {
  default = 2
  type    = number
  description = "eks-node desired size"
}

variable "node_max_size" {
  default = 2 
  type    = number
  description = "eks- node maxize"
}

variable "node_min_size" {
  default = 2 
  type    = number
  description = "eks-node desired size"
}