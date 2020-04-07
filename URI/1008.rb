employees = gets.chomp.to_i
worked_hours = gets.chomp.to_i
receive_per_hour = gets.chomp.to_f

result = worked_hours * receive_per_hour

puts "NUMBER = #{employees}"
puts "SALARY = U$ %.2f\n" % result
