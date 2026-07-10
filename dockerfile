FROM jenkins/jenkins:lts

USER root

COPY --from=docker:28-cli /usr/local/bin/docker /usr/local/bin/docker

COPY --from=docker:28-cli /usr/local/libexec/docker/cli-plugins/docker-compose /usr/local/libexec/docker/cli-plugins/docker-compose

RUN chmod +x /usr/local/libexec/docker/cli-plugins/docker-compose

RUN groupadd -f docker && usermod -aG docker jenkins

USER jenkins