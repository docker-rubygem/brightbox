FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.4.6

RUN gem install brightbox --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["brightbox-capify"]
CMD ["--help"]
