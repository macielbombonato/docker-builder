# Docker Builder

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://opensource.org/licenses/MIT) [![Build Status](https://travis-ci.org/macielbombonato/docker-builder.svg?branch=master)](https://travis-ci.org/macielbombonato/docker-builder)

## Docker hub

Para acessar o hub da imagem [clique aqui](https://hub.docker.com/r/macielbombonato/docker-builder).
  
  
---  
  
Uma imagem docker com alguns utilitários para servir de base para processo de build de aplicações. A ideia é que não sejam necessárias ferramentas adicionais para conseguir empacotar uma aplicação, apenas o docker e o restante (padrão) fica por conta desta imagem.

Cada projeto deverá ter sua particularidade no processo de build, para esses casos, o projeto deve ter seu **Dockerfile** e o ponto de partida deste será essa imagem.

O ponto de partida desta imagem base é: **openjdk:8-jdk**

Esta imagem possui:

- git 
- mercurial 
- curl 
- wget 
- rsync 
- expect 
- python 
- python-dev 
- python-pip 
- build-essential 
- zip 
- unzip 
- tree 
- clang 
- imagemagick 
- awscli 
- software-properties-common 
- maven
- ant

---
  
