variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
  default     = "customer-app-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
  default     = "customer-app-aks"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.28"
}

variable "system_node_count" {
  description = "Initial system node count"
  type        = number
  default     = 2
}

variable "system_node_vm_size" {
  description = "System node VM size"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "app_node_vm_size" {
  description = "App node pool VM size"
  type        = string
  default     = "Standard_D4s_v3"
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default = {
    environment = "production"
    project     = "customer-app"
    managed-by  = "terraform"
  }
}
