# Welcome to Docker World

Primeiros passos com docker


## Criando uma imagem

- Para criar uma imagem basta criar um Dockerfile contendo todas as instruções que ela precisa executar para deixar seu ambiente funcionando.
	> docker build -f Dockerfile -t {nome-da-imagem} .

- Para visualizar as imagens criadas em sua máquina basta executar o comando.
	> docker images

- Para executar a imagem que acabamos de criar. Nesse comando estamos especificando que a maquina local **localhost:8080** está apontando para a porta 3000 do container.
	> docker run -d -p 8080:3000 {nome-da-imagem}
	
- Para listar os containers ativos 
	> docker ps

- Subir para o docker hub
	> docker push lksilva/node

- Baixar do docker hub
	> docker pull lksilva/node


## Conectando diferentes containers

- Primeiro temos que criar uma network para atribuir alias aos container a fim de evitar amarrar o IP do container
	> docker network create --driver bridge {nome-da-network}

- Agora, ao criarmos o container devemos apontar para nossa rede
	> docker run --name {nome-do-container} --network {nome-da-network} {nome-da-imagem}

- Caso exista a necessidade de testar se deu tudo certo, basta executar o comando e verificar se seu container está atrelado ao network 
	> docker inspect ubuntu-container


## Usando composer

- Primeiro devemos criar o arquivo docker-compose.yml, configurando todos os ambientes e comunicando os mesmos através dos networks.

- Para criar uma imagem do docker basta executar o comando
	> docker-compose build

- Para subir a imagem
	> docker-compose up -d

- Caso seja necessário derrubar o ambiente 
	> docker-compose down