FROM amazonlinux:latest

MAINTAINER Memed SRE Team <sre@memed.com.br>

# include aws exec in the PATH env var
ENV PATH=$PATH:/root/.local/bin/

# Add PIP
RUN yum update -y && yum install -y python-pip

# Add AWS CLI
RUN pip install --user awscli

# Add Groff
RUN yum install -y groff

# Add zip and unzip
RUN yum install -y zip unzip

# Add jq
RUN yum install -y jq

# Add bc
RUN yum install -y bc

# Add nodejs
RUN yum install -y curl &&\
    curl -sL https://rpm.nodesource.com/setup_12.x | bash - &&\
    curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo &&\
    yum install -y yarn
