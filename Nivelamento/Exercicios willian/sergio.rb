def casa (pedreiro, material)
    return pedreiro + material
end


def laje (areia, cimento, pedra)
    return areia * cimento + pedra
end

def resultado(laje, casa)
    return laje + casa
end


puts "Digite o valor da areia:"
x = gets.chomp.to_i
puts "Digite o valor da cimento:"
y = gets.chomp.to_i
puts "Digite o valor da pedra:"
z = gets.chomp.to_i
puts "Digite o valor da pedreiro:"
a = gets.chomp.to_i
puts "Digite o valor da material:"
b = gets.chomp.to_i

# resultado =  laje(x,y,z) + casa(a,b)
# puts "O total é : " + resultado.to_s

puts " O total é : " + resultado(laje(x, y, z),casa(a,b)).to_s


# def casa(a,b)
#     return a + b
# end

# def laje(x,y,z)
#     return x * y + z
# end

# def resultado(laje, casa)
#     resultado = laje + casa
# end
# puts "Digite o valor da areia:"
# x = gets.chomp.to_i
# puts "Digite o valor da cimento:"
# y = gets.chomp.to_i
# puts "Digite o valor da pedra:"
# z = gets.chomp.to_i
# puts "Digite o valor da pedreiro:"
# a = gets.chomp.to_i
# puts "Digite o valor da material:"
# b = gets.chomp.to_i

# puts resultado(laje(x,y,z), casa(a,b))


