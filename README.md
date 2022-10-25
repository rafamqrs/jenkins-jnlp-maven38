# Custom Jenkins JNLP with Maven38 and JDK17

This repository has an unofficial image of jenkins agent with maven3.8 and java17.


### Build Steps

1. Download the Dockerfile to a directory of your preferences.
2. Execute the command below
```console
podman build -f Dockerfile -t jenkins-agent-maven38
```
If you are using docker
```console
docker build -f Dockerfile -t jenkins-agent-maven38
```
