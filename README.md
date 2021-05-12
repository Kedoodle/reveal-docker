# reveal-docker

A [reveal.js](https://github.com/hakimel/reveal.js) container which serves presentations from [markdown content](https://revealjs.com/markdown/#external-markdown). It can be run locally or deployed, for example to [GitHub Pages](https://pages.github.com/).

## Example usage

Produce a suitable `index.html` file and other presentation files - refer to the reveal.js documentation. Run a `kedoodle/reveal-docker` container, mounting in your presentation files. You can view your presentation locally at http://localhost:8000/. For an example deployment to GitHub Pages, see the `.github/workflows/publish.yml` workflow.

```shell
docker run --rm --name reveal-docker \
  -p 8000:8000 \
  -v "$(pwd)"/src/index.html:/reveal.js/index.html \
  -v "$(pwd)"/src/slides.md:/reveal.js/slides.md \
  kedoodle/reveal-docker:latest
```

## Development

To run locally `docker-compose up -d --build serve`. View the presentation by loading http://localhost:8000/ in a browser.

To shell into the container `docker-compose run --rm sh`.

### Requirements
- [docker-compose](https://docs.docker.com/compose/)
