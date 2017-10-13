FROM circleci/node:6.11

USER root

RUN apt-get install -y python-dev

RUN wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py && \
    pip install awscli

RUN yarn global add static-server

USER circleci