# Generate CA private key
openssl genrsa -out ca.key 2048

# Create CA certificate signing request
openssl req -new -key ca.key -out ca.csr

# Self-sign CA certificate
openssl x509 -days 3650 -signkey ca.key -in ca.csr -req -out ca.crt
