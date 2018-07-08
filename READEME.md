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