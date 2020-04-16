# frozen_string_literal: true

carro = Hash[nome: 'Civic', marca: 'Honda', cor: 'Preto']

# acessar pela chave
puts carro[:nome]

# adicionando mais um atributo
carro[:modelo] = 'SI'

puts carro
