# frozen_string_literal: true

# classe que serah testada
class AvengersHeadQuarter
  attr_accessor :list

  # transforma a variavel list que esta como nil
  # em um array
  def initialize
    self.list = []
  end

  def put(avenger)
    # adiciona a lista
    list.push(avenger)
  end
end

# TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do
  it 'deve adicionar um vingador' do
    # instancia a classe
    hq = AvengersHeadQuarter.new

    # invoca o metodo
    hq.put('Spiderman')

    expect(hq.list).to include 'Spiderman'
  end

  it 'deve adicionar uma lista de vingadores' do
    hq = AvengersHeadQuarter.new

    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    # verifica se na lista existe Thor
    # expect(hq.list).to include 'Thor'

    # verifica se o tamanho da lista eh maior que zero
    expect(hq.list.size).to be > 0
  end

  it 'thor deve ser o primeiro da lista' do
    hq = AvengersHeadQuarter.new

    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    expect(hq.list).to start_with('Thor')
  end

  it 'ironman deve ser o último da lista' do
    hq = AvengersHeadQuarter.new

    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')
    hq.put('Ironman')

    expect(hq.list).to end_with('Ironman')
  end

  it 'deve conter o sobrenome' do
    avenger = 'Peter Parker'

    # verifica com expressao regular se contem uma palavra na string
    expect(avenger).to match(/Par/)

    # verifica com expressao regular se nao contem uma palavra na string
    expect(avenger).not_to match(/van/)
  end
end
