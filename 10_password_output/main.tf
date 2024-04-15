resource "random_password" "password" {
    length = 16
    special = true
    override_special = "_%@"
}

output "password" {
    value = random_password.password.result
    sensitive = true
}

# terraform output -raw password
