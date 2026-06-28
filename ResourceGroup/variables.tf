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

variable "tags" {
  type = map(string)

  default = {
    Environment = "dev"
    Project     = "Demo"
  }

  description = "Resource Group tags"
}

variable "subscription_id" {
  type = string
  default = "Test"
  description = "SubscriptionID"
}
