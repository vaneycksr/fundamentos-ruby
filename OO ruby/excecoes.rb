# frozen_string_literal: true

# devo tentar alguma coisa (o try do java)
# begin

# raiz de onde esta o arquivo
#   file = File.open('./teste.txt')

# ler o conteudo do arquivo
#   puts file.read if file

# # obter um possivel erro (o catch do java)
# rescue Exception => e
#   puts e
#   puts e.backtrace
# end

def soma(n1, n2)
  puts n1 + n2
rescue StandardError => e
  puts e
  # puts 'Erro ao executar a soma'
end

soma('ola', 2)
