#A very basic docker file with vim
FROM ubuntu:16.04

ENV DOC_ROOT /var/www/mysite-dev
ARG JQUERY_VERSION=3.2.0
ENV JQUERY_VERSION ${JQUERY_VERSION} 

LABEL MAINTAINER "Arturo Candela"
RUN apt-get update \
    && apt-get upgrade -yf \
    && apt-get install -yf \
     nginx \
     php7.0 \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

COPY code/sites/mysite ${DOC_ROOT}
ADD https://code.jquery.com/jquery-${JQUERY_VERSION}.min.js ${DOC_ROOT}/js/
