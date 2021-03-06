FROM java:8
RUN useradd -u 5555 -ms /bin/bash basex

ENV HOME /home/basex
USER 5555 
WORKDIR /home/basex

RUN wget -O basex.zip http://files.basex.org/releases/9.4.6/BaseX946.zip
RUN unzip basex.zip
EXPOSE 1984 8080 
CMD basex/bin/basexhttp -h 8080
