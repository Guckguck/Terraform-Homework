resource "random_integer" "subnet_count" {
    min = 1
    max = 5
}

locals {
    subnets = [for i in range(random_integer.subnet_count.result): "Subnet ${i + 1}"]
}

resource "local_file" "subnets" {
    content = join("\n", local.subnets)
    filename = "${path.module}/subnets.txt"
}