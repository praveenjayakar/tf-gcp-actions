variable "project_id" {
  type        = string
  description = "Google Cloud Project ID"

  validation {
    condition     = length(var.project_id) > 6
    error_message = "Project ID must be more than 6 characters long."

  }

}

########################

variable "region" {
  type        = string
  description = "Google Cloud Region"
  default     = "us-central1"

  validation {
    condition     = contains(["us-central1", "us-east1", "us-west1", "europe-west1", "asia-east1"], var.region)
    error_message = "Region must be valid gcp region."

  }

}

#######################
variable "environment" {
  type        = string
  description = "Enviornemnt name (dev, stage, prod)"
  default     = "dev"

  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, stage, or prod."
  }
}


########################

variable "vpc_name" {
  type        = string
  description = "Name of the default vpc network name"
  default     = "main-vpc"

}

###########################

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
  default     = "main-subnet"

}

############################

variable "subnet_cidr" {
  type        = string
  description = "CIDR range for subnet"
  default     = "10.0.1.0/24"

  validation {
    condition     = can(cidrhost(var.subnet_cidr, 0))
    error_message = "Subnet CIDR must be a valid IPV4 CIDR block."
  }

}