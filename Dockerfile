FROM node:15-alpine

# Download reveal.js release
ENV REPO=https://github.com/hakimel/reveal.js \
    VERSION=4.1.0
RUN wget "$REPO/archive/$VERSION.tar.gz" -O - | tar -zx && \
    mv "reveal.js-$VERSION" "reveal.js"

# Add Alpine packages required to install reveal.js
RUN apk --no-cache add python make g++

# Install reveal.js
WORKDIR /reveal.js
RUN npm install

ENTRYPOINT ["npm", "start"]
