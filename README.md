# sign-this

Playing around with gpg signing, because why not.

## Generate a key for testing and store it in a file

```
gpg --full-generate-key
gpg --output public.pgp --armor --output <filename> --export <email>
gpg --output private.pgp --armor --output <filename> --export-secret-key <email>
```
