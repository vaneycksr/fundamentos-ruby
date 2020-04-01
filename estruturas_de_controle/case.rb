puts "Digite o número do mês que você nasceu: "

month = gets.chomp.to_i

case month

when 1..3
  puts "vc nasceu no começo do ano"
when 9..12
  puts "vc nasceu no final do ano"
when 4..6
  puts "vc nasceu na primeira metade do ano"
when 7..9
  puts "vc nasceu na segunda metade do ano"
else
  puts "nao foi possivel identificar"
end
