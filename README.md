# python-slim-buster-with-git

## Prerequisites

```
export VERSION=1
```

## How to build 

```
docker build -t lexologe/python-slim-buster-with-git:v${VERSION} .
```

## How to push

```
docker login
docker push lexologe/python-slim-buster-with-git:v${VERSION}
```

Optional:

```
docker tag lexologe/python-slim-buster-with-git:v${VERSION} lexologe/python-slim-buster-with-git:latest
docker push lexologe/python-slim-buster-with-git:latest
```
