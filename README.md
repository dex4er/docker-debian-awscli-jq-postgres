# docker-debian-awscli-jq-postgres

[![GitHub](https://img.shields.io/github/v/tag/dex4er/docker-debian-awscli-jq-postgres)](https://github.com/dex4er/docker-debian-awscli-jq-postgres)
[![CI](https://github.com/dex4er/docker-debian-awscli-jq-postgres/actions/workflows/ci.yaml/badge.svg)](https://github.com/dex4er/docker-debian-awscli-jq-postgres/actions/workflows/ci.yaml)
[![Lint](https://github.com/dex4er/docker-debian-awscli-jq-postgres/actions/workflows/lint.yaml/badge.svg)](https://github.com/dex4er/docker-debian-awscli-jq-postgres/actions/workflows/lint.yaml)
[![Docker Image Version](https://img.shields.io/docker/v/dex4er/debian-awscli-jq-postgres/latest?label=docker&logo=docker)](https://hub.docker.com/r/dex4er/debian-awscli-jq-postgres)

Container image with:

- [aws-cli](https://github.com/aws/aws-cli)
- [jq](https://github.com/stedolan/jq)
- [PostgreSQL](https://github.com/postgres/postgres)

## Tags

- `bullseye-YYYYmmdd-awscli-X.Y.Z-jq-X.Y-postgres-X.Y`, `latest`

## Usage

CLI:

```shell
docker pull dex4er/debian-awscli-jq-postgres
docker run -v ~/.aws:/root/.aws -e AWS_PROFILE dex4er/debian-awscli-jq-postgres bash -c "aws sts get-caller-identity"
```

Dockerfile:

```Dockerfile
FROM dex4er/debian-awscli-jq-postgres:latest
RUN bash -c 'aws --version'
RUN bash -c 'jq --version'
RUN bash -c 'psql --version'
```

## License

[License information](https://github.com/asdf-vm/asdf/blob/master/LICENSE) for
[asdf](https://asdf-vm.com/) project.

[License information](https://github.com/aws/aws-cli/blob/develop/LICENSE.txt)
for [aws-cli](https://github.com/aws/aws-cli) project.

[License information](https://github.com/stedolan/jq/blob/master/COPYING) for
[jq](https://github.com/stedolan/jq) project.

[License
information](https://github.com/postgres/postgres/blob/master/COPYRIGHT) for
[PostgreSQL](https://github.com/postgres/postgres) project.

[License
information](https://github.com/dex4er/docker-debian-awscli-jq-postgres/blob/main/LICENSE) for
container image project.
