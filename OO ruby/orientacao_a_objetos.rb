# frozen_string_literal: true

class Conta
  attr_accessor :saldo, :nome

  # construtor
  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def deposita(valor)
    # metodo self invoca outro objeto ou atributo ou metodo da propria classe
    self.saldo += valor

    # interpolacao de strings -> #{variavel}
    puts "Depositando a quantia de #{valor} reais na conta de #{nome}"
  end
end

c = Conta.new('Van Eyck')

c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome
