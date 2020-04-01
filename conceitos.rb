# o cursos fica na mesma linha
print "Digite seu nome: "

# entrada do teclado
num1 = gets.chomp.to_i

print "Digite sua idade: "

num2 = gets.chomp.to_i

# concatena dentro da string usando #{variavel}
#puts "ola meu nome é #{nome} e minha idade é #{idade}!"
soma = num1 + num2
sub = num1 - num2
div = num1 / num2
puts "soma: #{soma}\nsubtração: #{sub}\ndivisão: #{div}"
