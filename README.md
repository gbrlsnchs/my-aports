# My aports
## About
These are my custom aports for my private aports repository at https://aports.gsr.dev.

## How to use
### Public key
Download public keys from https://aports.gsr.dev and place them at `/etc/apk/keys/`.

### Repository
Add the repository to the repository list. I prefer using a tag for it:

```console
echo "@custom https://aports.gsr.dev/repositories/main" >> /etc/apk/repositories
```

Then, it's possible to install a package from it, for example,
[Park](https://codeberg.org/gbrlsnchs/park):
```console
apk add park@custom
```

### Building packages
If it's the first time using the repository, build the base container image and then generate a key
pair:
```console
./scripts/mkimg
./scripts/keygen
```
Then, for every package you want to build (considering you already have the appropriate template and
necesary files):
1. `./scripts/lint path/to/package` (optional)
2. `./scripts/checksum path/to/package`
3. `./scripts/build path/to/package`
4. `./scripts/index`
5. `./scripts/sign`
6. `./scripts/mkpages`
