FROM --platform=linux/x86_64 alpine

# docker run --platform linux/x86_64 --rm -ti -v $(pwd):/code alpine:3.19 sh

RUN apk update
RUN apk add curl gcc g++ git gmp-dev libc-dev libffi-dev make musl-dev ncurses-dev perl tar xz zlib zlib-dev zlib-static

USER root

RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh

ENV PATH "/root/.ghcup/bin:$PATH"
ENV PATH "/root/.cabal/bin:$PATH"