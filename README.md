# reveal-docker
[![Build and push Docker image](https://github.com/Kedoodle/reveal-docker/actions/workflows/release.yml/badge.svg)](https://github.com/Kedoodle/reveal-docker/actions/workflows/release.yml)

A containerised [reveal.js](https://github.com/hakimel/reveal.js) installation which serves presentations.

## Usage instructions

Produce a suitable `index.html` file and other presentation files such as markdown slides - refer to the [reveal.js documentation](https://revealjs.com/markdown/#external-markdown). Run a `kedoodle/reveal-docker` container, mounting in your presentation files.

See an [example here](https://github.com/Kedoodle/reveal-docker-example) which also publishes the presentation to GitHub Pages.

Using Docker Compose is recommended to define your `reveal-docker` container in code. Run your presentation with `docker-compose up reveal`:

`docker-compose.yml`
```yml
services:
  reveal:
    image: kedoodle/reveal-docker:latest
    ports:
      - 8000:8000
      - 35729:35729
    volumes:
      - ./src/index.html:/reveal.js/index.html
      - ./src/slides.md:/reveal.js/slides.md
```

Alternatively without Docker Compose:
```sh
docker run --rm --name reveal-docker \
  -p 8000:8000 \
  -p 35729:35729 \
  -v "$(pwd)"/src/index.html:/reveal.js/index.html \
  -v "$(pwd)"/src/slides.md:/reveal.js/slides.md \
  kedoodle/reveal-docker:latest
```

## Development

Create suitable presentation files and mount as volumes in [`docker-compose.yml`](./docker-compose.yml). To run locally `docker-compose up reveal`. View the presentation at http://localhost:8000/.

To shell into the container `docker-compose run --rm sh`.
