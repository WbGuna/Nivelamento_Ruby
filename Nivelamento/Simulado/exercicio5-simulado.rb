# Faça uma função chamada 'mediana' que recebe um array de números e retorna a mediana entre eles.
# Lembrando que para obter a mediana de uma série de números, é necessário ordenar a série (usar a função sort()) e retornar:
# - se a série tiver um número (n) ímpar de elementos, retornar o número da posição n/2 (a parte inteira);
# - e caso se a série tiver um número (n) par de elementos, retornar a média entre os números das posições (n/2)-1 e (n/2)
# Ex.: 
# puts(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
# puts(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0

#Arrays
array = [10, 0, -1, -500, 20]

# Funções

# Coloca em ordem o array.
def ordenaArray(array)
    return array.sort()
end

# Retorna a Mediana do array.
def mediana(array)
    array1 = ordenaArray(array)
    len = array1.length
    (array1[(len - 1) / 2] + array1[len / 2]) / 2.0
end

# Função Menu - escolhe se o array é impar ou par
def menuArray(valor)  
    if valor < 0 or valor > 2
        puts " ESCOLHA UM VALOR DO MENU VALIDO"      
    elsif valor == 1
        puts " Você escolheu um array com indice impar!"
        return array = [10, 0, -1, -500, 20, 100]
    else
        puts " Você escolheu um array com indice par!"
        return array = [10, 0, -1, -500, 20]    
    end
end

# Inicio programa

puts "Escolha um valor (1) para impar e (2) para par."
valor = gets.chomp.to_i
puts mediana(menuArray(valor))
