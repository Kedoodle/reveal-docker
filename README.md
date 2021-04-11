# reveal-docker

A containerised [reveal.js](https://github.com/hakimel/reveal.js) installation intended to generate static files from [markdown content](https://revealjs.com/markdown/#external-markdown) for deployment to [GitHub Pages](https://pages.github.com/).

## Development

To run locally `docker-compose up -d --build serve`. View the presentation by loading http://localhost:8000/ in a browser.

To shell into the container `docker-compose run --rm sh`.

### Requirements
- [docker-compose](https://docs.docker.com/compose/)
