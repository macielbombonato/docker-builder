FROM openjdk:8-jdk

LABEL maintainer "Maciel Escudero Bombonato <maciel.bombonato@gmail.com>"

USER root

# Update certificates
RUN update-ca-certificates

# ------------------------------------------------------
# --- Base pre-installation

# --- Remove another maven installations and prepare to
# install required packages

# Generate proper EN US UTF-8 locale
# Install the "locales" package - required for locale-gen
RUN apt-get update --yes
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y locales \
# Do Locale gen
    && locale-gen en_US.UTF-8

RUN dpkg --add-architecture i386 \
 && apt-get update --yes \
 && DEBIAN_FRONTEND=noninteractive \
 && apt-get -y install \
# Requiered
    apt-utils \
    git \
    mercurial \
    curl \
    wget \
    rsync \
    sudo \
    expect \
# Python
    python \
    python-dev \
    python-pip \
# Ruby
    ruby \
# Common, useful
    libssl-dev \
    autoconf \
    libtool \
    build-essential \
    make \
    zip \
    unzip \
    tree \
    clang \
    imagemagick \
    awscli \
    g++ \
# For PPAs
    software-properties-common \
# Build tools
    maven \
    ant \
# Dependencies to execute Android builds
    openjdk-8-jdk \
    libc6:i386 \
    libstdc++6:i386 \
    libgcc1:i386 \
    libncurses5:i386 \
    libz1:i386 \
    zlib1g:i386

# Cleaning
RUN apt-get clean --yes

# Create directory to host the application
RUN mkdir /opt/app
WORKDIR /opt/app
