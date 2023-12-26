## Overview

This repository contains configuration files and instructions to set up a Jenkins server within a Docker container. The provided Dockerfile extends the official Jenkins LTS image, adding Docker support, while the docker-compose.yml file orchestrates the deployment.

## Getting Started

### Prerequisites

- Docker
- Docker Compose

### Build Docker Image

1. Clone this repository:

```bash
git clone https://github.com/your-username/your-repository.git

cd your-repository
```

2. Build the Docker image:

```bash
docker build -t jenkins-with-docker .
```

### Run Jenkins Server

1. Start the Jenkins server using Docker Compose:

```bash
docker-compose up -d
```

2. Access Jenkins in your web browser at http://localhost:8080

3. Retrieve the Jenkins initial admin password:

```bash
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

4. Follow the instructions to complete the Jenkins setup.

## Additional Configuration

### Jenkins Home Volume

The Jenkins Home volume is mounted to the jenkins_home Docker volume. If you need to persist Jenkins data outside the container, adjust the volume configuration in the docker-compose.yml file.

### Docker Socket Volume

The Docker Socket volume is mounted to the Docker socket on the host machine. This allows the Jenkins server to communicate with the Docker daemon on the host machine. If you need to change the location of the Docker socket on the host machine, adjust the volume configuration in the docker-compose.yml file.
