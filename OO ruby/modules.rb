# frozen_string_literal: true

# serve para agrupar classes, atributos e metodos
# evitam confrontos de nomes
# modules NAO PODEM SER INSTANCIADOS
# modules NAO PODEM SER HERDADOS
module Modulo
  def metodo_padrao
    puts 'sou um modulo'
  end
end

# chama o modulo e tudo o que tem dentro
# atraves do include
class ChamandoModulo
  include Modulo
end

object = ChamandoModulo.new
object.metodo_padrao
