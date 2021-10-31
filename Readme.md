
This repo contains the example file structure discussed in https://www.ratanparai.com/c++/writing-unit-tests-with-bazel/

Environment set up :

build docker file :

CMD :  docker build -t bazel:1.0 .

Run docker container in -it mode and mount the volumes

CMD : docker run  -it -v /home/gl-292/Desktop/git_repo/cpp-template-master:/app bazel:1.0

Once environment is up and mounting the volume to docker container is done.

Try running the bazel build command.

To build all the targets

CMD : bazel build //... 

CMD : bazel build //src/main:main 

To build a particular library 

CMD : bazel build //src/lib:GreetingLib

TO Get the output of the binary 

CMD : bazel-bin/src/main/main

To Run unit test cases :

CMD : bazel test //...

