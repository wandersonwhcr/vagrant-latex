# vagrant-latex

Este projeto visa criar uma máquina Vagrant para instalação rápida do LaTeX,
evitando que a sua distribuição Linux instale uma grande quantidade de pacotes
desnecessários para outras tarefas.

## Utilização

Primeiramente você terá que inicializar a máquina Vagrant, instalando os pacotes
necessários para utilização do LaTeX. Para isto, basta executar o seguinte
comando de terminal.

```
vagrant up --provision
```

Após a instalação de todos os pacotes, você poderá utilizar o LaTeX dentro da
máquina Vagrant, acessando-a pelo cliente SSH através do Vagrant e executando o
make para compilar o arquivo de exemplo do LaTeX.

```
vagrant ssh
make
```
