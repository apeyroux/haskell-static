# Usage

```bash
docker run --platform linux/x86_64 --rm -ti -v $(pwd):/code apeyroux/haskell-static
```

# Build

```bash
cabal build --enable-executable-static
```