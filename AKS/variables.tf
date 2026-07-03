variable "RSG_NAME" {
  type = string
  default = "Test"
  description = "ResourceGroupName"
}

variable "RSG_LOCATION" {
  type = string
  default = "Test"
  description = "ResourceGroupLocation"
}

variable "IdentityName" {
  type = string
  description = "UserIdentityName"
}
variable "RegistryName" {
  type = string
  description = "RegistryName"
}
variable "SKU" {
  type = string
  description = "SKU for Container Registry"
}
variable "GeoReplicationLocation" {
  type = list(string)
  description = "SKU for Container Registry"
}
variable "NodePoolName" {
  type = string
  description = "NodePoolName"
}
variable "NodePoolCount" {
  type = number
  description = "NodePoolCount"
}
variable "NodePoolSize" {
  type = string
  description = "NodePoolSize"
}
variable "AKSNAME" {
  type = string
  description = "AKSNAME"
}
variable "tags" {
  type = map(string)
  default = {
    "Creator" = "Anjan"
  }
  description = "tags"
}
variable "kedaStatus" {
    type = bool
    description = "KedaTrueFalse"
    default = false
}