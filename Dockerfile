FROM sonarsource/sonar-scanner-cli AS base 

ARG SONAR_HOST
ARG SONAR_TOKEN

WORKDIR /src

COPY ./src /src/src

USER root

RUN sonar-scanner  -Dsonar.sources=.  -Dsonar.host.url=${SONAR_HOST}  -Dsonar.login=${SONAR_TOKEN}

