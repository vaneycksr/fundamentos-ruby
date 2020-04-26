# Repositório para praticar Ruby e Rspec

****** criando estrutura dos testes unitários ********

- cria o projeto em ruby

$ bundle init

- no arquivo Gemfile, colocar dependências que vai utilizar

- ler as dependencias do arquivo Gemfile e instala

$ bundle install

- cria a estrutura para implementar os testes

$ rspec --init

# Sobre geração de relatórios

- gerar relatório em formato html

1) na pasta do projeto

	$ rspec --format html --out report.html

- caso queira executar em um servidor CI (Jenkins, Teamcity) qualquer tipo de servidor que executa builds

1) adiciona esse dependência na Gemfile 

	gem 'rspec_junit_formatter'
2) na pasta do projeto

	$ bundle install
3) na pasta do projeto

	$ rspec --format RspecJunitFormatter --out report.xml

