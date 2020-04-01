product_status = "closed"

# se nao for open
unless product_status == "open"
  check_change = "can"
else
  check_change = "can not"
end

puts "you #{check_change} change the product"
