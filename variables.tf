variable "customer" {
  type        = string
  description = "Identifier for the Customer"

  validation {
    condition     = length(regexall("^[[:lower:][:digit:]]{2,10}$", var.customer)) > 0
    error_message = "Customer identifier must comprise 2 to 10 lowercase letters."
  }
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "testing"

  validation {
    condition = contains(
      ["testing", "dev", "qa", "stage", "prod"],
      var.environment
    )
    error_message = (
      "Allowed environment values are: \"testing\", \"dev\", \"qa\", \"stage\", \"prod\"."
    )
  }
}
