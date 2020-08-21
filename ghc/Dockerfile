FROM ubuntu:latest
RUN apt update && apt install -y ghc cabal-install && cabal v2-update && cabal v2-install HaRe
# mkdir -p /root/.cabal/store/ghc-8.6.5/package.db
ENTRYPOINT "/bin/bash"


