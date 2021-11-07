# Defina uma função chamada “produto”, que deve receber um array de números e que deve retornar o produto resultante entre eles (a multiplicação de todos os elementos entre si). 
# Ex.:
# puts(produto([1, 4, 7]))               # deve imprimir 28
# puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0



# Arrays
array = [10, 100, 1000, 0, -1]
array0 = [1, 4, 7]


#Funções
# Função multiplica os elementos em  ordem no indice do array

def produto(array)
    novoArray = 1
    for i in (0..array.size-1)
        novoArray = novoArray * array[i]
    end
    return novoArray
end

# Função Menu - escolhe qual array quer testar
def menuArray(valor)  
    if valor < 0 or valor > 2
        puts " ESCOLHA UM VALOR DO MENU VALIDO"      
    elsif valor == 1
        puts " Você escolheu esse array?. : [10, 100, 1000, 0, -1]." 
        return array = [10, 100, 1000, 0, -1]
    else
        puts " Você escolheu esse array. : [1, 4, 7]."
        return array = [1, 4, 7]    
    end
end


# Inicio do programa / Interagindo com usuario

puts "\nVou apresentar dois arrays, escolha qual deles quer multiplicar os elementos."
puts "\nEscolha um valor (1) para esse array [10, 100, 1000, 0, -1] e (2) para esse array [1, 4, 7]."
print ">>"
valor = gets.chomp.to_i
puts produto(menuArray(valor))
