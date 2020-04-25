# frozen_string_literal: true

# classe que vai ser testada
class ContaCorrente
  attr_accessor :saldo

  def initialize(saldo)
    self.saldo = saldo
  end

  def saque(valor)
    self.saldo -= valor
  end
end

# suite de conta corrente, ou seja, tudo que for relacionado
# a conta corrente vai ficar aqui
describe ContaCorrente do
  # suite apenas de saque
  describe 'Saque' do
    # como se fosse o cenario escrito em bdd
    context 'quando o valor eh positivo' do
      # descreve o comportamento
      before(:all) do
        # tornando conta uma variavel de instancia
        # para ficar disponivel em todo o contexto
        @conta = ContaCorrente.new(1000.00)
        @conta.saque(200.00)
      end

      # faz a validacao
      it 'entao atualiza o saldo' do
        expect(@conta.saldo).to eql 800.00
      end
    end
  end
end
