# Supported tags and respective `Dockerfile` links

-	[`latest`, `5.1` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/5.1/Dockerfile)
-	[`5.0.1` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/5.0/Dockerfile)
-	[`4.5.4` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.5/Dockerfile)
-	[`4.4.1` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.4/Dockerfile)
-	[`4.3.3` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.3/Dockerfile)
-	[`4.2` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.2/Dockerfile)
-	[`4.1.2` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.1/Dockerfile)
-	[`4.0` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/4.0/Dockerfile)
-	[`3.7.4` (*Dockerfile*)](https://github.com/orangesignal/docker-sonarqube/blob/master/3.7/Dockerfile)

# ![SonarQube](http://www.sonarqube.org/wp-content/themes/sonarsource.org/images/sonar.png)

Dockerfile to build a SonarQube container image.

# Prerequisites

* [Install Docker](http://docs.docker.com/installation/)
* [Install Docker Compose](http://docs.docker.com/compose/install/)

Now you can verify that the installation is ok with the following commands:

```bash
docker version
docker-compose --version
```

# Installation

Pull the image from the docker index. This is the recommended method of installation as it is easier to update image in the future. These builds are performed by the Trusted Build service.

```bash
docker pull orangesignal/sonarqube
```

Alternately you can build the image yourself.

```bash
git clone https://github.com/orangesignal/docker-sonarqube.git
cd docker-sonarqube
docker build --tag="$USER/sonarqube" .
```

# Quick Start

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