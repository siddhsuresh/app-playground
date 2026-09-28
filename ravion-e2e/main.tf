terraform {
  cloud {}
}

variable "greeting" {
  type    = string
  default = "hello from the pull request"
}

resource "terraform_data" "greeting" {
  input = var.greeting
}

resource "terraform_data" "added" {
  input = "added by the e2e pull request"
}

output "greeting" {
  value = terraform_data.greeting.output
}

# Applied by the stack before the e2e pull request.
# Webhook delivery retry.
# Run against the updated change pipeline.
# Run in us-east-1.
