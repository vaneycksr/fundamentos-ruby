n = gets.chomp.to_f

if n >= 0 and n <= 25
  puts "Intervalo [0,25]"
elsif n > 25 and n <= 50
  puts "Intervalo (25,50]"
elsif n > 75 and n <= 100
  puts "Intervalo (75,100]"
else
  puts "Fora de intervalo"
end
