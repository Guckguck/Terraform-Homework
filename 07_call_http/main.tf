provider "http" {}

data "http" "example" {
    url = "https://api.chucknorris.io/jokes/random"
}

resource "local_file" "example" {
    content = data.http.example.body
    filename = "${path.module}/joke.json"
}
