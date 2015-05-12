# orangesignal/sonar [![](https://img.shields.io/badge/container-ready-green.svg?style=flat)](https://registry.hub.docker.com/u/orangesignal/sonar/)

SonarQube small docker images

## Supported tags

- [`latest`, `5.1` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/5.1/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:latest)
- [`5.0.1` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/5.0/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:5.0.1)
- [`4.5.4` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.5/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:4.5.4)
- [`4.4.1` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.4/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:4.4.1)
- [`4.3.3` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.3/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:4.3.3)
- [`4.2` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.2/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:4.2)
- [`4.1.2` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.1/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:4.1.2)
- [`4.0` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.0/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:4.0)
- [`3.7.4` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/3.7/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:3.7.4)
- [`3.6.3` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/3.6/Dockerfile) - [*image size*](https://imagelayers.io/?images=orangesignal%2Fsonar:3.6.3)

For more information about this image and its history, please see the [`orangesignal/docker-sonarqube` GitHub repo](https://github.com/orangesignal/docker-sonarqube/).

## What is SonarQube?

[SonarQube](http://www.sonarqube.org/) software (previously called Sonar) is an open source quality management platform, dedicated to continuously analyze and measure technical quality, from project portfolio to method.

> [wikipedia.org/wiki/SonarQube](http://en.wikipedia.org/wiki/SonarQube)

![logo](http://upload.wikimedia.org/wikipedia/commons/e/e6/Sonarqube-48x200.png)

## Prerequisites

* [Install Docker](http://docs.docker.com/installation/)
* [Install Docker Compose](http://docs.docker.com/compose/install/)

Now you can verify that the installation is ok with the following commands:

```bash
docker version
docker-compose --version
```

## How to use

```bash:H2
docker run -p 9000:9000 orangesignal/sonar
```

Run the SonarQube with Docker Compose. Docker Compose uses a `docker-compose.yml` file that describes the environment.

```bash
git clone https://github.com/orangesignal/docker-sonarqube.git
cd docker-sonarqube
docker-compose up
```

**NOTE**: Please allow a minute or two for the SonarQube application to start.

On another console run:

```bash
make port
```

Point your browser to the given URL and login using the default username and password:

* username: **admin**
* password: **admin**

You should now have the SonarQube application up and ready for testing. If you want to use this image in production the please read on.

## Environment Variables
The SonarQube image uses several environment variables which are easy to miss. While none of the variables are required, they may significantly aid you in using the image.

### `SONAR_JDBC_URL`
The embedded database is recommended for demos and tests only. It must be replaced by a database like PostgreSQL, MySQL or Oracle in production environment. Read the [installation guide](http://docs.sonarqube.org/display/SONAR/Installing) to get more details.

Default value is: `jdbc:h2:tcp://localhost:9092/sonar`

### `SONAR_JDBC_USERNAME`
This optional environment variable is used in conjunction with `SONAR_JDBC_PASSWORD` to set a user and its password.
If it is not specified, then the default user of `sonar` will be used.

### `SONAR_JDBC_PASSWORD`
This environment variable is recommend for you to use the SonarQube image. The default user is defined by the `SONAR_JDBC_USERNAME` environment variable.

## LICENSE
[![Apache 2 License](https://img.shields.io/badge/license-Apache%202-blue.svg?style=flat)](LICENSE)