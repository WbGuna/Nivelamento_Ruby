# Faça uma função chamada 'multiplica_arrays' que deve receber como parâmetros 2 arrays e deve retornar um valor numérico que deve ser o resultado da soma da multiplicação entre os elementos que ocupam a mesma posição em cada array.
# Ex.:
# puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
# Pois o resultado é igual a: (1*10) + (2*20) + (3*30)
# Obs.: Valide se os 2 arrays têm o mesmo tamanho. Caso não tiverem, a função deve retornar nil.

# Arrays 
array = [1, 2, 3]
array1 = [10, 20, 30]
array3 = [1, 2, 3, 4, 5]


# Funções

# Função soma todos os indices do array
def produto(array)
    novoArray = 0
    for i in (0..array.size-1)
        novoArray = novoArray + array[i]
    end
    return novoArray
end

# Função multiplica o indice de um arrei pelo indice de outro array e depois soma o total.
def multiplicaArrays(array, array1)
    array2 = []
    if array.size-1 == array1.size-1
        for i in(0..array.size-1)
            novoArray = array[i] * array1[i]
            array2 << novoArray                
        end 
        return array2 
    else 
        return nil
    end
end

# Inicio do programa
puts " A multiplicação entre os indices de cada array, e a soma do total é.:"
print ">>>" + produto(multiplicaArrays(array, array1)).to_s