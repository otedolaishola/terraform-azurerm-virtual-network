variable name {
  type        = string
  description = "The name of the virtual network."
}
variable resource_group_name {
  type        = string
  description = "The name of the resource group in which to create the virtual network."
}
variable location {
  type        = string
  description = "The location/region where the virtual network is created."
}
variable address_space {
  type        = list(string)
  description = "The address space that is used in the virtual network. More than one address space can be provisioned."
}
variable dns_servers {
  type        = list(string)
  default     = []
  description = "List of IP addresses of DNS servers."
}
variable subnets {
  type        = list(map(string))
  default     = []
  description = "List containing the blocks for the configuration of the subnets."
  # subnets = [{ name = "", address_prefix = "" }]
}
variable tags {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resource."
}
