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

    expect(hq.list).to eql ['Spiderman']
  end
end
