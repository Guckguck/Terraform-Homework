provider "random" {}

resource "random_integer" "random" {
    min = 1
    max = 100
}

output "random_number" {
    value = random_integer.random.result
    description = "Random number between 1 and 100"
}
