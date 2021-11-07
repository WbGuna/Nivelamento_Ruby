# Escreva uma função chamada "calcula_media" que deve receber um array de números como parâmetro e deve retornar o valor da média aritmética entre todos os números do array.


#     puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.

#Arrays
array = [1, 2, -1, 3, 0, 7]

# Funções 

# def calculaMedia(array)
#     media = array.sum.fdiv(array.size)
#     return media
# end

def calculaMedia(array)
    total = 0
        for i in (0..array.size-1)
            total = total + array[i]
        end
    return total / array.size
end

# Incicio programa 

puts calculaMedia(array)
