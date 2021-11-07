print " Informe qual o valor da base da sua piramide: "
numeroPiramide = gets.chomp.to_i.abs
caracter1 = "*"
caracter2 = "++"
car1 = caracter1
car2 = caracter2

if numeroPiramide % 2 == 0
    for i in (1..numeroPiramide)
        puts "**" * (numeroPiramide - i) + car2 + "**" * (numeroPiramide - i)
        car2 += caracter2 * 2
    end
else
    for i in (1..numeroPiramide)
        puts "+" * (numeroPiramide - i) + car1 + "+" * (numeroPiramide - i)
        car1 += caracter1 * 2
    end
end
