# Escreva uma função chamada "tipo_triangulo" que deve receber três parâmetros: a, b e c, que se referem a cada lado do triângulo. A função deve retornar uma string contendo a seguinte informação, conforme a regra abaixo:
#     "TRIANGULO EQUILATERO", se os 3 lados forem iguais
#     "TRIANGULO ISÓSCELE", se 2 dos lados forem iguais
#     "TRIANGULO ESCALENO", se os 3 lados forem diferentes   
#     Valide se os parâmetros são valores maiores que zero, se não forem, a função deve retornar deve retornar "ARGUMENTOS INVÁLIDOS".   
#     puts(tipo_triangulo(10, 10, 10))  # deve imprimir TRIANGULO EQUILÁTERO


#Funções

def tipoTriangulo(a, b, c)
    if a <= 0 or b <= 0 or c <= 0
        puts "ARGUMENTOS INVÁLIDOS"  
    elsif a == b and b == c
        puts "TRIANGULO EQUILATERO"
    elsif a == b or a == c or b == c
        puts "TRIANGULO ISÓSCELE"
    elsif a != b and a != c and b != c
        puts "TRIANGULO ESCALENO"
    end
end


# Inicio do programa / Interagindo com Usúario

puts "Me informe tres valores e vou te informar que tipo de triangulo será!"
print "Valor nº 1.: "
valor1 = gets.chomp.to_i 
print "Valor nº 2.: "
valor2 = gets.chomp.to_i
print "Valor nº 3.: "
valor3 = gets.chomp.to_i

puts "Os valore informados são: " + valor1.to_s + " ," + valor2.to_s + " ," + valor3.to_s
tipoTriangulo(valor1, valor2, valor3)
