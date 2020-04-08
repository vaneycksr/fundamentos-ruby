estados = []

# adiciona um elemento no array
estados.push("paraiba")
estados.push("sergipe", "bahia")

#insere em qualquer posicao do array
estados.insert(0, "maranhão")

# estados[0..2] -> retorna o intervalo contido entre essas posicoes

#estados.first -> primeiro elemento
#estados.last -> ultimo elemento
#estados.count or estados.length -> tamanho do array
#estados.empty? -> retorna booleano se o array ta vazio ou nao
# estados.include?("rio grande do sul") ->verifica se ha um item especifico no array

puts estados.include?("rio grande do sul")
