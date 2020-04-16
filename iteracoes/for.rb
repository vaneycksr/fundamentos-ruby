# frozen_string_literal: true

frutas = %w[Maça uva morango]

# for f in frutas
#  puts f
# end

frutas.each do |f|
  puts f
end

# foreach
frutas.each do |item|
  puts item
end

(0..10).each do |i|
  puts 'Repetindo a mensagem ' + i.to_s + ' vez(es)'
end
