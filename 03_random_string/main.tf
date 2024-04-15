provider "random" {}

resource "random_string" "random" {
    length = 10
    special = false
    upper = false
    numeric = false
}

resource "local_file" "file" {
    content = "Random string"
    filename = "${path.module}/${random_string.random.result}.txt"
}
