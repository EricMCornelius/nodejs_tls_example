# create the crl directory
mkdir -p crl

# if crl files don't exist, create them
if [ ! -e crl/crlnumber ] ; then
  cat 1000 > crl/crlnumber
fi
touch crl/index.txt
touch index.txt.attr

# revoke a given .crt file
openssl ca -keyfile ca/ca.key -cert ca/ca.crt -revoke $1

# update revocation list
openssl ca -keyfile ca/ca.key -cert ca/ca.crt -gencrl -out crl/crl.pem
