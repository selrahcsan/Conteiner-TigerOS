# TigerOS Docker Image

TigerOS é uma distribuição Linux baseada no Ubuntu, projetada para oferecer uma experiência de usuário otimizada e personalizada. Com a versão Docker do TigerOS, os usuários podem facilmente testar e utilizar essa distribuição em um ambiente contêinerizado, sem a necessidade de instalação direta no hardware.

## Características do TigerOS em Docker

* Permite que desenvolvedores e entusiastas experimentem o TigerOS rapidamente, utilizando comandos Docker simples.
* Isolado: Executa o sistema em um contêiner, garantindo que o ambiente host permaneça inalterado.

Para começar a usar o TigerOS em Docker, basta puxar a imagem e iniciar o contêiner com os comandos apropriados. Isso torna o processo de experimentação e desenvolvimento com TigerOS mais acessível e eficiente. Se precisar de mais informações ou ajuda para configurar o TigerOS em Docker.

## Dependências

* [Docker Engine](https://docs.docker.com/engine/install/)
* Docker Desktop - Opcional :
  * [Linux](https://docs.docker.com/desktop/install/linux/)
  * [Windows](https://docs.docker.com/desktop/install/windows-install/)
  * [Mac](https://docs.docker.com/desktop/install/mac-install/)
* Git

## Como usar

Com o Docker instalado em seu sistema pode instalar em seu sistema:

### Método 1

Baixar a imagem do Docker Hub com o comando :

```bash
docker pull charlesstna/tigeros
```

### Método 2

Baixe o docker file como git:

```bash
git clone https://github.com/selrahcsan/Conteiner-TigerOS.git
```

Acesse o diretório :

```bash
cd Conteiner-TigerOS
```

Para construir a imagem:

```bash
docker build -it charlesstna/tigeros
```

## Como executar

```bash
docker run -it tigeros
```
