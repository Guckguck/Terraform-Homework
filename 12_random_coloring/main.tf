resource "random_integer" "red" {
    min = 0
    max = 255
}

resource "random_integer" "green" {
    min = 0
    max = 255
}

resource "random_integer" "blue" {
    min = 0
    max = 255
}

locals {
    red_hex = format("%x", random_integer.red.result)
    green_hex = format("%x", random_integer.green.result)
    blue_hex = format("%x", random_integer.blue.result)
}

resource "local_file" "color_scheme" {
    content = "Red: ${local.red_hex}, Green: ${local.green_hex}, Blue: ${local.blue_hex}"
    filename = "${path.module}/color_scheme.txt"
}