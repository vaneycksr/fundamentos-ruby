# frozen_string_literal: true

# classe pai
class Veiculo
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "#{nome} está pronto para iniciar o trajeto!"
  end

  def buzinar
    puts 'Beep beep!'
  end
end

# herda de Veiculos
class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciando o trajeto."
  end
end

# herda de Veiculos
class Moto < Veiculo
  def pilotar
    puts "#{nome} iniciando o trajeto."
  end
end

civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

toro = Carro.new('Toro', 'Fiat', 'Confort')
toro.ligar
toro.buzinar
toro.dirigir

fazer = Moto.new('Fazer', 'Yamaha', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar
