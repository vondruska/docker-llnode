# docker-llnode

[![pipeline status](https://github.com/vondruska/docker-llnode/workflows/CI/badge.svg)](https://github.com/vondruska/docker-llnode/actions)

## What is this?
Simple docker image to allow a developer with a Node core dump to investigate and diagnose without getting into dependency hell. Especially if you're on a Windows machine.

## How do I use it?
`llnode` will look for the core dump to be located at `/dump/core.dump`, so mount the dump file there. And you should make the instance interactive and remove itself at the end.

Linux-y:
```
docker run --rm -it -v "~/server.dump:/dump/core.dump" vondruska/llnode:latest
```

Windows:
```
docker run --rm -it -v "C:/Users/vondruska/server.dump:/dump/core.dump" vondruska/llnode:latest
```

## Helpful commands for a user (or future Steven)
* `v8 findjsobjects` = object types, size and instances
* `v8 findjsobjects -d` = get object grouped with similar attributes
*  `v8 findjsinstances -n 100 {type}` = get the js instances of that type. limited to 100
* `v8 inspect {address}` = inspect instance with the address
* `v8 findrefs {address}` = find references of the address
