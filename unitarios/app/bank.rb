# frozen_string_literal: true

# classe generica que possui comportamento e atributos incomun
class Conta
  attr_accessor :saldo, :mensagem

  def initialize(saldo)
    self.saldo = saldo
  end

  def saque(valor, max, taxa)
    if valor > saldo
      self.mensagem = 'Saldo insuficiente para saque :('
    elsif valor > max
      self.mensagem = 'Limite máximo por saque é de R$ ' + max.to_s
    else
      self.saldo -= valor + taxa
    end
  end
end

# classe que vai ser testada
class ContaCorrente < Conta
  def saque(valor, max = 700, taxa = 5.00)
    # procura por esse mesmo metodo na classe pai
    super
  end
end

# conta poupanca que vai ser testada
class ContaPoupanca < Conta
  def saque(valor, max = 500, taxa = 2.00)
    super
  end
end
