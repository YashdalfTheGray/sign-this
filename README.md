# sign-this

Playing around with gpg signing, because why not.

## Generate a key for testing and store it in a file

```
gpg --full-generate-key
gpg --output public.pgp --armor --output <filename> --export <email>
gpg --output private.pgp --armor --output <filename> --export-secret-key <email>
```

## Importing somewhere else

```
gpg --import <public_key_file>
gpg --allow-secret-key-import --import <secret_key_file>
```

Technically, if you just import the secret key, it will also import the public key but the commands are there for completeness. 

## Sign something

```
gpg --detach-sign --output <signature_file_name> <file_to_sign> 
```

If you want to disable the passphrase prompt, you can use the `--batch` option and pass in the passphrase using `--passphrase` option. Be careful with this option, this could potentially put your passphrase in plaintext in logs if you capture the stdout and store it somewhere. 


```
gpg --detach-sign --batch --passphrase <passphrase> --output <signature_file> <file_to_sign>
```

## Verify something

For validating, you should have access to the public key that the file was signed with. So you'll have to import the public key into your keyring. 

```
gpg --verify <signature_file> <file_to_verify>
```