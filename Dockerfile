FROM docker:18.09.7

RUN apk update && apk upgrade && apk add py-pip python-dev libffi-dev openssl-dev gcc libc-dev make # pipに必要なパッケージのインストール
RUN apk add curl
RUN pip install docker-compose
RUN pip install awscli
RUN curl -o /usr/local/bin/kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.10/2019-08-14/bin/linux/amd64/kubectl
RUN chmod +x /usr/local/bin/kubectl
RUN curl -o /usr/local/bin/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator
RUN chmod +x /usr/local/bin/aws-iam-authenticator
RUN wget -O /usr/bin/yq https://github.com/mikefarah/yq/releases/download/2.4.1/yq_linux_amd64
RUN chmod +x /usr/bin/yq
RUN sudo apk add bash bash-completion
RUN chsh -s /bin/bash
