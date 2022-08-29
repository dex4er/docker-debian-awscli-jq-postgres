## $ docker build --tag dex4er/debian-awscli-jq-postgres --squash .

ARG DEBIAN_ASDF_TAG=latest

FROM dex4er/debian-asdf:${DEBIAN_ASDF_TAG}

COPY .tool-versions /root/

RUN apt-get -q -y update
RUN apt-get -q -y --no-install-recommends install \
  build-essential libreadline-dev libssl-dev zlib1g-dev libcurl4-openssl-dev uuid-dev

ENV POSTGRES_SKIP_INITDB=yes

RUN bash -c 'cat .tool-versions | while read plugin version; do asdf plugin add $plugin; done'
RUN bash -c 'asdf install'

RUN apt-get -q -y remove build-essential
RUN apt-get -q -y autoremove
RUN apt-get -q -y remove libreadline-dev libssl-dev zlib1g-dev libcurl4-openssl-dev uuid-dev
RUN find /var/cache/apt /var/lib/apt/lists /var/log -type f -delete

RUN bash -c 'asdf list'
