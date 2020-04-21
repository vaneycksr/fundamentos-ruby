# frozen_string_literal: true

describe 'suite rspec' do
  # cenario
  it 'soma de valores' do
    soma = 10 + 5
    expect(soma).to eql '15'
  end
end
