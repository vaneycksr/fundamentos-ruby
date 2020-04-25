# frozen_string_literal: true

# classe que vai ser testada
class ContaCorrente
  attr_accessor :saldo, :mensagem, :limite

  def initialize(saldo)
    self.saldo = saldo
    self.limite = 700.00
  end

  def saque(valor)
    if valor > saldo
      self.mensagem = 'Saldo insuficiente para saque :('
    elsif valor > limite
      self.mensagem = 'Limite máximo por saque é de R$ 700'
    else
      self.saldo -= valor
    end
  end
end
