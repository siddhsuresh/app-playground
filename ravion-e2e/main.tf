variable "greeting" {
  type    = string
  default = "hello"
}

resource "terraform_data" "greeting" {
  input = var.greeting
}

resource "terraform_data" "legacy" {
  input = "removed by the e2e pull request"
}

output "greeting" {
  value = terraform_data.greeting.output
}

# Applied by the stack before the e2e pull request.
# Webhook delivery retry.
# Run against the updated change pipeline.
