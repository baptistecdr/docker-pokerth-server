<h3 align="center">PokerTH Server (Dockerized)</h3>
<p align="center">
    A simple Dockerfile/docker-compose to run PokerTH Server.
    <br>
    <a href="https://github.com/baptistecdr/docker-pokerth-server/issues/new">Report bug</a>
    ·
    <a href="https://github.com/baptistecdr/docker-pokerth-server/issues/new">Request feature</a>
</p>

<div align="center">

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/baptistecdr/docker-pokerth-server/ci.yml?branch=main)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/baptistecdr/pokerth-server)
![Docker Pulls](https://img.shields.io/docker/pulls/baptistecdr/pokerth-server)
![GitHub](https://img.shields.io/github/license/baptistecdr/docker-pokerth-server)

</div>

## Quick start

### Docker

* Download config file
```shell
wget https://raw.githubusercontent.com/baptistecdr/docker-pokerth-server/main/config.xml
```
* Customize configuration file `config.xml`
* Run
```shell
docker run \
--mount type=bind,source="$PWD/config.xml",target=/pokerth/.pokerth/config.xml \
-p 7234:7234 \
baptistecdr/pokerth-server
```

### Docker Compose

* Download docker-compose file
```shell
wget https://raw.githubusercontent.com/baptistecdr/docker-pokerth-server/main/docker-compose.yml
```
* Download config file
```shell
wget https://raw.githubusercontent.com/baptistecdr/docker-pokerth-server/main/config.xml
```
* Customize configuration file `config.xml`
* Run `docker-compose up -d`

## Bugs and feature requests

Have a bug or a feature request? Please first search for existing and closed issues. If your problem or idea is not
addressed yet, [please open a new issue](https://github.com/baptistecdr/docker-pokerth-server/issues).

## Contributing

Contributions are welcome!
