#FROM ubuntu:18.04
 
#Install Bazel, https://bazel.build/versions/master/docs/install.html#ubuntu
FROM openjdk:11

RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list \
  && curl https://bazel.build/bazel-release.pub.gpg | apt-key add -

RUN apt-get update \
  && apt-get install -y bazel \
  && rm -rf /var/lib/apt/lists/* 
 
# Setup default user, when enter docker container
WORKDIR /src
 
CMD  ["bash"]