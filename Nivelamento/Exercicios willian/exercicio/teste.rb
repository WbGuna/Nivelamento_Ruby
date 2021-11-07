print "Informe o caracter que deseja usar para construir a piramide: "
caracter = gets.chomp[0]

print "Informe o tamanho de sua piramide: "
tam = gets.chomp.to_i.abs

valor = caracter

for i in (1..tam)
    puts " " * (tam - i) + valor
    valor += caracter * 2
end