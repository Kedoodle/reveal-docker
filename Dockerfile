FROM node:15-alpine

# Download reveal.js release
ENV REPO=https://github.com/hakimel/reveal.js \
    VERSION=4.1.0
RUN wget "$REPO/archive/$VERSION.tar.gz" -O - | tar -zx && \
    mv "reveal.js-$VERSION" "reveal.js"
