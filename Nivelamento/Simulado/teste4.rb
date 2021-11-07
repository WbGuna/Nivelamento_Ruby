# 2) Fazer uma função chamada 'insere_no_array' que recebe um array, um valor qualquer e a posição alvo como parâmetros e que deve inserir o valor informado na posição alvo, de modo a 'empurrar para a frente' os demais elementos e ao final retornar true. Se a posição alvo não estiver no limite do array, a função deve retornar false.


#Array
array = [10, 20, 30, 40, 50, 60, 70, 80]

#Funções

# Insere valor no array em qualquer lugar
def insereNoArray(array, valorQualquer, posicaoAlvo)
    for i in (0..array.size-1)
        if i == posicaoAlvo
            array0 = array[0..i-1] #recebe o array até a inserção -1
            array2 = [valorQualquer] + array[i..array.size-1] # faz a inserção e acrescenta até o final do array.
            array4 = array0 + array2 #Soma os dois arreys acima 
            print array4
            return  true
        else 
            if posicaoAlvo < 0 or posicaoAlvo > array.size-1
                puts "Digite uma posição aceitavel por favor!"
                return puts false
            end
        end
    end
end 

# Exibe o array
def exibirArray(array)
    for i in(0..array.size-1)
        print array[i]
        if i < array.size-1
            print ", "
        end    
    end
    puts "\n"
end


# Incicio Programa / Interagindo com ususario
puts "escolha uma posição para inserir um novo valor no array!"
print exibirArray(array)
print ">>"
posicao = gets.chomp.to_i

puts "Escolha o valor que deseja inserir nessa posição!"
print ">>"
valor = gets.to_i

puts insereNoArray(array, valor, posicao)


