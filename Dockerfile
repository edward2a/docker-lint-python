FROM python:3.6-alpine3.7

LABEL description='Alpine/Python/PEP8-PEP257 linter' \
      maintainer='edward2a@gmail.com'

ADD scripts/scan.sh /usr/local/bin/scan
ADD config/pycodestyle.ini /root/.config/pycodestyle

RUN chmod 755 /usr/local/bin/scan && \
    mkdir -p /app/source && \
    pip3 install --upgrade --no-cache-dir --disable-pip-version-check pycodestyle pydocstyle

WORKDIR /app
CMD ["/usr/local/bin/scan", "source"]
