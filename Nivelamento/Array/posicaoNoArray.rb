#1) Fazer uma função chamada 'posicao_no_array' que recebe um array e um valor qualquer como parâmetros e que deve retornar a posição da primeira ocorrência do valor no array. Se o valor não existir no array, retornar -1.

# Array
array = [22,33,44,55,66,77,88,99,00]

# Funções
def posicaoNoArray(array,valorQualquer)
    for i in(0..array.size-1)
        if valorQualquer == array[i]
            return i           
        end
    end
    puts -1
end


# Inicio do programa /  Interagindo com usuario.
puts "\nDigite um numero inteiro qualquer, se ele existir no array, retornara o valor da primeira posição do array, e se não existir retornara -1.\n"
print ">>>>>. :"

valorQualquer = gets.chomp.to_i
puts posicaoNoArray(array,valorQualquer)