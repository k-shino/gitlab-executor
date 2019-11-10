FROM docker:18.09.7

RUN apk update && apk upgrade && apk add py-pip python-dev libffi-dev openssl-dev gcc libc-dev make # pipに必要なパッケージのインストール
RUN apk add curl
RUN pip install docker-compose
RUN pip install awscli --upgrade --user

#RUN curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#RUN unzip awscliv2.zip
#RUN ./aws/install


