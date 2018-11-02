FROM n0trace/yarn
LABEL maintainer="n0trace@protonmail.com"

COPY rootCA.* /root/.anyproxy/certificates/

RUN yarn global add anyproxy &&\
    yarn cache clean

EXPOSE 8001 8002

ENTRYPOINT anyproxy
