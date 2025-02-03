# mise-encryption-example

Example of using mise + sops + age to decrypt secrets automatically.

> **NOTE:** Never include private keys in your project like this!

# Using

```bash
# install packages
./configure.sh

# Show the automatically decrypted value of ./.secrets.env.json
mise set

# Decrypt the ./.secrets.env.json file
task decrypt

# Re-encrypt it
task encrypt
```
