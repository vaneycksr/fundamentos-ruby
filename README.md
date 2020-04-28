# Repositório para praticar Ruby e Rspec

Repositório criado para praticar a linguagem Ruby, e um curso de Ruby com Rspec.

## Criando estrutura dos testes unitários 

> cria o projeto em ruby

```shell
$ bundle init
```

> no arquivo Gemfile, colocar dependências que vai utilizar

### Ler as dependências do arquivo Gemfile e instala

``` shell
$ bundle install
```
### Cria a estrutura para implementar os testes

``` shell
$ rspec --init
```

## Sobre geração de relatórios

- Gerar relatório em formato html

> na pasta do projeto

``` shell
$ rspec --format html --out report.html
```

- Caso queira executar em um servidor CI (Jenkins, Teamcity) qualquer tipo de servidor que executa builds

> adiciona esse dependência na Gemfile 

	gem 'rspec_junit_formatter'
	
> na pasta do projeto

``` shell
$ bundle install
```

> na pasta do projeto

``` shell
$ rspec --format RspecJunitFormatter --out report.xml
```
