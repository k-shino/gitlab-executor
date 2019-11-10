FROM docker:stable

RUN apk update && apk upgrade && apk add py-pip python-dev libffi-dev openssl-dev gcc libc-dev make # pipに必要なパッケージのインストール
RUN pip install docker-compose
RUN pip install awscli



