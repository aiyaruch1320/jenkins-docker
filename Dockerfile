FROM jenkins/jenkins:lts

USER root

RUN curl -fsSL https://get.docker.com | sh && \
    usermod -aG docker jenkins

USER jenkins