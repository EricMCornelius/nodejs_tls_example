# Generate .pfx file from provided private key and cert 
openssl pkcs12 -export -inkey $1.key -in $1.crt -certfile ca/ca.crt -out $2.pfx
