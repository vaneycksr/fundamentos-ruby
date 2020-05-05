# frozen_string_literal: true

carro = Hash[nome: 'Civic', marca: 'Honda', cor: 'Preto']

# acessar pela chave
puts carro[:nome]

# adicionando mais um atributo
carro[:modelo] = 'SI'

puts carro

idade_pessoas = { van: 28, bel: 23, painho: 56, mainha: 50 }

idade_pessoas.each do |_i, _j|
  puts _i
end
