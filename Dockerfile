FROM ubuntu:22.04

LABEL maintainer="charlesstna@proton.me"

RUN echo "tiger-conteiner" > /etc/hostname

RUN apt-get update && apt-get install -y \
    vim \
    curl \
    wget \
    git \
    nano \
    sudo \
    apt-utils \
    net-tools \
    bash-completion \
    command-not-found \
    language-pack-pt \
    language-pack-pt-base \
    && rm -rf /var/lib/apt/lists/*


RUN useradd -ms /bin/bash tiger && \
    echo "tiger:tiger" | chpasswd && \
    adduser tiger sudo
    
USER tiger

WORKDIR /home/tiger

RUN mkdir -p curso/debs curso/material curso/exercicios

RUN wget -P curso/debs https://gitlab.com/-/project/31927362/uploads/1164b1c240e4cdacc652b3dd5953c3d1/nala_0.15.4_all.deb 

CMD ["bash"]
