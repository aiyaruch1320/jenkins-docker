FROM jenkins/jenkins:2.479.1

USER root

RUN curl -fsSL https://get.docker.com | sh && \
    usermod -aG docker jenkins

USER jenkins