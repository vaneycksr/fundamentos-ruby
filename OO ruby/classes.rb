# frozen_string_literal: true

class Carro
  # atributos
  attr_accessor :nome

  # metodo
  def ligar
    puts 'O carro está pronto para iniciar o trajeto'
  end
end

# instanciando um objeto
civic = Carro.new

civic.nome = 'Civic'

civic.ligar
