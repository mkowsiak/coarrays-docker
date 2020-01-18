FROM ubuntu:18.10

LABEL author="michal@owsiak.org"
LABEL description="Environment for running coarray based Fortran codes"

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y vim
RUN apt-get install -y libopenmpi-dev
RUN apt-get install -y openmpi-bin
RUN apt-get install -y gfortran
RUN apt-get install -y open-coarrays-bin
RUN apt-get install -y make
RUN apt-get install -y tree

RUN mkdir -p /opt
ADD run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

RUN useradd -ms /bin/bash fortcoder 

USER fortcoder
WORKDIR /home/fortcoder

RUN echo 'PS1="[\u@coarray-docker:\w ] $ "' >> /home/fortcoder/.bashrc

RUN mkdir -p /home/fortcoder/code
RUN mkdir -p /home/fortcoder/sample

ADD hello.f90 /home/fortcoder/sample/hello.f90

CMD /opt/run.sh

