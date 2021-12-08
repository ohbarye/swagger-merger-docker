# swagger-merger Docker

This is an unofficial Docker image for https://github.com/WindomZ/swagger-merger.

## Usage

Let's say you have target files under `/docs`.

Run the command below to generate a merged YAML file.

```shell
$ docker run --rm -v $PWD/docs:/swagger ohbarye/swagger-merger 'swagger-merger -c -i /swagger/src.yaml -o /swagger/dist.yaml'
> Watching /swagger/
```

### watch mode

The following command enables _watch_ mode. It automatically generates YAML file everywhen you edit any source files.

```shell
$ docker run --rm -v $PWD/docs:/swagger --entrypoint watch ohbarye/swagger-merger 'swagger-merger -c -i /swagger/src.yaml -o /swagger/dist.yaml' /swagger/
> Watching /swagger/
```

