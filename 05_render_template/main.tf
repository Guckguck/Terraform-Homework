locals {
    config = templatefile("${path.module}/template.tpl", {
      user = "username"
      password = "password"
    })
}

resource "local_file" "config" {
  content = local.config
  filename = "${path.module}/config.json"
}
