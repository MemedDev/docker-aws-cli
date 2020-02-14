FROM amazonlinux:latest

MAINTAINER Memed SRE Team <sre@memed.com.br>

# include aws exec in the PATH env var
ENV PATH=$PATH:/root/.local/bin/

# Add PIP, Groff, zip, unzip, jq, bc, AWS CLI
RUN yum update -y &&\
    yum install -y python-pip groff zip unzip jq bc &&\
    pip install --user awscli

# Add nodejs
RUN yum install -y curl &&\
    curl -sL https://rpm.nodesource.com/setup_12.x | bash - &&\
    curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo &&\
    yum install -y yarn

# Add git
RUN yum install -y git
