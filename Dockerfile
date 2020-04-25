FROM docker:18.09.7

RUN apk update && \
    apk upgrade && \
    apk add bash \
        bash-completion \
        curl \
        gcc \
        gettext \
        git \
        jq \
        libc-dev \
        libffi-dev \
        make \
        openssl \
        openssl-dev \
        openssh-client \
        py-pip \
        python-dev \
        nodejs \
        npm \
        coreutils
RUN pip install docker-compose
RUN pip install awscli
RUN curl -o /usr/local/bin/kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.10/2019-08-14/bin/linux/amd64/kubectl
RUN chmod +x /usr/local/bin/kubectl
RUN curl -o /usr/local/bin/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator
RUN chmod +x /usr/local/bin/aws-iam-authenticator
RUN wget -O /usr/bin/yq https://github.com/mikefarah/yq/releases/download/3.2.1/yq_linux_amd64
RUN chmod +x /usr/bin/yq
RUN sed -e 's;/bin/ash$;/bin/bash;g' -i /etc/passwd
RUN curl -sSL https://git.io/get-mo -o /usr/local/bin/mo
RUN chmod +x /usr/local/bin/mo
RUN npm install -g newman
