# docker-llnode

[![pipeline status](https://github.com/vondruska/docker-llnode/workflows/CI/badge.svg)](https://github.com/vondruska/docker-llnode/actions)

## What is this?
Simple docker image to allow a developer with a Node core dump to investigate and diagnose without getting into dependency hell. Especially if you're on a Windows machine.

## How do I use it?

`llnode` will look for the core dump to be located at `/dump/core.dump`, so mount the dump file there. And you should make the instance interactive and remove itself at the end.

Linux-y:
```
docker run -it -v "~/server.dump:/dump/core.dump" vondruska/llnode:latest
```

Windows:
```
docker run -it -v "C:/Users/vondruska/server.dump:/dump/core.dump" vondruska/llnode:latest
```


## Versions

This uses `node:{version}-slim` for the base image. Right now there are tags for Node 8, 10 and 12. `vondruska/llnode:8`,  `vondruska/llnode:10` and `vondruska/llnode:12` respectively.

`latest` is Node 12.
