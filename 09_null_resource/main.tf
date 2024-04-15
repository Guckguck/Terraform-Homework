resource "null_resource" "example" {
    provisioner "local-exec" {
        command = "sh ${path.module}/script.sh"
    }
}
