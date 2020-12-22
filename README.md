Jobly Docker Image
==================================================

![Version](https://img.shields.io/badge/version-0.5.7-blue.svg)

This is the official docker image for [Jobly][1].

- [View on DockerHub][2]
- [View on GitHub][3]

Usage
--------------------------------------------------

Mount your `app` folder into the `/app` folder in the container.

This folder should contain a `jobs` subfolder, and possibly your configuration
files and other dependencies.


### With Docker Compose

You can use [this docker-compose configuration][4]:

    $ docker-compose build
    $ docker-compose up web worker
    $ docker-compose run jobly Ping

### Without Docker Compose

```shell
# Network
$ docker network create jobly

# Redis
$ docker run --rm \
  --name redis \
  --network jobly \
  redis

# Worker
$ docker run --rm \
  --network jobly \
  -v $PWD/app:/app \
  -e JOBLY_REDIS_URL=redis://redis:6379/0 \
  dannyben/jobly worker

# Server
$ docker run --rm \
  --name web \
  --network jobly \
  -p 3000:3000 \
  -v $PWD/app:/app \
  -e JOBLY_REDIS_URL=redis://redis:6379/0 \
  dannyben/jobly server

# Command
$ docker run --rm \
  --network jobly \
  -v $PWD/app:/app \
  -e JOBLY_REDIS_URL=redis://redis:6379/0 \
  -e JOBLY_API_URL=http://web:3000/do \
  dannyben/jobly send Ping
```



[1]: https://github.com/dannyben/jobly
[2]: https://hub.docker.com/r/dannyben/jobly
[3]: https://github.com/dannyben/docker-jobly
[4]: https://github.com/DannyBen/docker-jobly/blob/master/docker-compose.yml
