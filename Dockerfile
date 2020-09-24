FROM python:3.7.4

LABEL "com.github.actions.name"="S3 Sync & reflash cloudfront"
LABEL "com.github.actions.description"="Sync a directory to an AWS S3 repository and create-invalidation distribution in cloudfront"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.9"
LABEL repository="https://github.com/liwei766/s3-sync-action"
LABEL homepage="https://liwei766.net/"
LABEL maintainer="LIWEI <uccblw@gmail.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='2.0.47'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
