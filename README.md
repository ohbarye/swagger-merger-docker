# swagger-merger Docker

This is an unofficial Docker image for https://github.com/WindomZ/swagger-merger.

## Usage

Let's say you have target files under `/docs`.

Run the command below to generate a merged YAML file.

```shell
$ docker run --rm -v $PWD/docs:/swagger --entrypoint swagger-merger ohbarye/swagger-merger '-c -i /swagger/src.yaml -o /swagger/dist.yaml'
```

### watch mode

The following command enables _watch_ mode. It automatically generates YAML file everywhen you edit any source files.

```shell
$ docker run --rm -v $PWD/docs:/swagger --entrypoint watch ohbarye/swagger-merger 'swagger-merger -c -i /swagger/src.yaml -o /swagger/dist.yaml' /swagger/
> Watching /swagger/
```

## Development

Edit Dockerfile, then build it.

```shell
$ docker build -t ohbarye/swagger-merger .
```

Test that the built image works well with commands in usage section.

## Release

Tag the built image.

```shell
$ docker tag ohbarye/swagger-merger ohbarye/swagger-merger:0.1.0
$ docker tag ohbarye/swagger-merger ohbarye/swagger-merger:latest
```

Push to the registory.

```shell
$ docker image push --all-tags ohbarye/swagger-merger
```

Check https://hub.docker.com/r/ohbarye/swagger-merger.

