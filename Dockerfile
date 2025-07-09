FROM ubuntu:24.04

LABEL maintainer="charlesstna@proton.me"

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=pt_BR.UTF-8
ENV LANGUAGE=pt_BR:pt
ENV LC_ALL=pt_BR.UTF-8
ENV PATH="/usr/games:${PATH}"

RUN apt update && apt upgrade -y && \
    apt install -y \
        sudo \
        apt-utils \
        vim \
        vim-nox \
        nano \
        curl \
        wget \
        git \
        net-tools \
        bash-completion \
        command-not-found \
        locales \
        build-essential \
        cmake \
        python3-dev \
        nala \
        lynx \
        htop \
        tree \
        cowsay \
        figlet \
        toilet \
        lolcat \
        fortune \
        python3-psutil \
    && locale-gen pt_BR.UTF-8 && update-locale LANG=pt_BR.UTF-8 \
    && apt clean && rm -rf /var/lib/apt/lists/*

RUN rm -f /etc/update-motd.d/* /etc/motd

RUN useradd -ms /bin/bash tiger && \
    echo "tiger:tiger" | chpasswd && \
    echo "tiger ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    adduser tiger sudo

USER tiger
WORKDIR /home/tiger

RUN mkdir -p curso/debs curso/material curso/exercicios && \
    touch ~/.hushlogin

RUN echo '#!/bin/bash' > ~/.bash_welcome && \
    echo 'clear' >> ~/.bash_welcome && \
    echo 'echo "🐯 TigerOS Docker 🐋" | lolcat -a ' >> ~/.bash_welcome && \
    echo '' >> ~/.bash_welcome && \
    echo 'exec bash' >> ~/.bash_welcome && \
    chmod +x ~/.bash_welcome

CMD ["bash", "-c", "/home/tiger/.bash_welcome"]
