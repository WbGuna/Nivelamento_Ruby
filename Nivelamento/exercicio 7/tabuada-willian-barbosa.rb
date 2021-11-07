puts "Digite um numero para ver sua tabuada!"
print ": "
numero = gets.chomp.to_i
num = 1
for num in (1..10)
    puts "(#{numero.to_i}) x (#{num.to_i}) = (#{numero.to_i * num.to_i})"
end
