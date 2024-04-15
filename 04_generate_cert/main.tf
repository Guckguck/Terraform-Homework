provider "tls" {}
# provider "aws" {}

resource "tls_private_key" "example" {
    algorithm = "ECDSA"
}

resource "tls_self_signed_cert" "example" {
    private_key_pem = "${tls_private_key.example.private_key_pem}"

    validity_period_hours = 72

    early_renewal_hours = 6

    allowed_uses = [ 
        "key_encipherment",
        "digital_signature",
        "server_auth"
    ]

    dns_names = ["example.com", "example.net"]

    subject {
      common_name = "example.com"
      organization = "ACME Examples, Inc"
    }
}

# resource "aws_iam_server_certificate" "example" {
#     name = "example_self_signed_cert"
#     certificate_body = "${tls_self_signed_cert.example.cert_pem}"
#     private_key = "${tls_private_key.example.private_key_pem}"
# }
