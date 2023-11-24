FROM python:3.10-alpine

COPY ./app /app
COPY ./entrypoint.sh /entrypoint.sh

RUN apk update && apk add \
    python3-dev \
    postgresql-dev \
    gcc \
    musl-dev \
    libpq-dev \
    git

ENV PYTHONPATH="/app:/app/"
RUN cp -r /usr/local/lib/python3.10/site-packages/ /site-packages.old

WORKDIR /app

ENTRYPOINT [ "/entrypoint.sh" ]
