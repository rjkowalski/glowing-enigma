FROM python:3.10-alpine
LABEL maintainer="jeffreykowalski@gmail.com"
ARG BUILD_DATE
ENV BUILD_DATE=${BUILD_DATE}
ARG VCS_REF
ENV VCS_REF=${VCS_REF}
ARG BUILD_VERSION
RUN echo "Building version: ${BUILD_VERSION} on ${BUILD_DATE} from ${VCS_REF}"
# Labels.
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=${BUILD_DATE}
LABEL org.label-schema.name="glowing-enigma"
LABEL org.label-schema.description="A toolbox of Python tips and tricks"
LABEL org.label-schema.url="https://github.com/rjkowalski/glowing-enigma"
LABEL org.label-schema.vcs-url="https://github.com/rjkowalski/glowing-enigma"
LABEL org.label-schema.vcs-ref=${VCS_REF}
LABEL org.label-schema.vendor="RJK"
LABEL org.label-schema.version=${BUILD_VERSION}
LABEL org.label-schema.docker.cmd="docker run 0d03bbeea4f6"
# Updates.
RUN apt-get update \ 
    && apt-get install -y vim \
    && apt-get install bash-completion -y \
    && pip3 install --no-cache-dir --upgrade pip
COPY . /glowing-enigma
WORKDIR /glowing-enigma
RUN pip3 install --no-cache-dir -r requirements.txt
# install this package
# RUN pip3 install -e .
