variable "create_file" {
    description = "Bestimmung"
    type = bool
    default = false
}

resource "local_file" "example" {
    count = var.create_file ? 1 : 0
    content = "Hello, Terraform!"
    filename = "${path.module}/example.txt"
}

# terraform apply -var 'create_file=true'
