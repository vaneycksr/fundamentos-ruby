# frozen_string_literal: true

# importa o arquivo que contem a classe que vai ter testada
require_relative '../app/bank'

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

    # cenario quando o saldo eh insuficiente
    context 'quando o saldo é zero' do
      before(:all) do
        @conta = ContaCorrente.new(0.00)
        @conta.saque(100.00)
      end

      it 'então exibe mensagem' do
        expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it 'e o saldo final com zero' do
        expect(@conta.saldo).to eql 0.00
      end
    end

    context 'quando o saldo é insuficiente' do
      before(:all) do
        @conta = ContaCorrente.new(500.00)
        @conta.saque(501.00)
      end

      it 'então exibe mensagem de erro' do
        expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it 'e o saldo permanece' do
        expect(@conta.saldo).to eql 500.00
      end
    end

    context 'quando supera o limite de saque' do
      before(:all) do
        @conta = ContaCorrente.new(1000.00)
        @conta.saque(701.00)
      end

      it 'então exibe mensagem' do
        expect(@conta.mensagem).to eql 'Limite máximo por saque é de R$ 700'
      end

      it 'e o saldo permanece' do
        expect(@conta.saldo).to eql 1000.00
      end
    end
  end
end
