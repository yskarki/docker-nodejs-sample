FROM registry.access.redhat.com/ubi8/nodejs-14-minimal:latest

USER root
RUN microdnf update

RUN mkdir /src

ENV NODE_ENV postgres
ENV POSTGRES_HOST postgres
ENV MONGO_HOST mongo
ENV PROTOCOL https

EXPOSE 8082

WORKDIR /src
COPY . /src

CMD node .
