FROM node:latest
MAINTAINER Tony Ganga

ADD . /opt/shipit

RUN useradd -ms /bin/bash ship \
    && chown -R ship /opt/shipit \
    && chmod +x /opt/shipit/entry-point.sh

USER ship

WORKDIR /opt/shipit

RUN npm install

CMD ["./entry-point.sh"]
