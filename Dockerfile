FROM centos:latest

RUN yum install -y epel-release
RUN yum update -y
RUN yum install -y python-devel python-setuptools python-pip which make
RUN pip install --upgrade pip
RUN pip install virtualenv

# RUN mkdir /coolapp
COPY ./ /coolapp/
COPY docker_makefile /coolapp/Makefile

WORKDIR /coolapp
RUN virtualenv venv
RUN source venv/bin/activate
RUN pip install Flask
RUN pip install nose

VOLUME /coolapp
EXPOSE 8080
# ENTRYPOINT make