# generate key with given name
openssl genrsa -out $1.key 2048

# generate certificate signing request
openssl req -new -key $1.key -out $1.csr

# sign certificate with CA key and cert
openssl x509 -days 3650 -CA ca/ca.crt -CAkey ca/ca.key -CAcreateserial -in $1.csr -req -out $1.crt
