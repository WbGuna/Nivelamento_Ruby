# 2) Fazer uma função chamada 'insere_no_array' que recebe um array, um valor qualquer e a posição alvo como parâmetros e que deve inserir o valor informado na posição alvo, de modo a 'empurrar para a frente' os demais elementos e ao final retornar true. Se a posição alvo não estiver no limite do array, a função deve retornar false.


#Funções

def insereNoArray(array, valorQualquer, posicaoAlvo)
    for i in (0..array.size-1)
        if i == posicaoAlvo
            return array.insert(posicaoAlvo, valorQualquer)
        end
    end
end  

#Array
array = [10, 20, 30, 40, 50, 60, 70, 80]

# Inicio do programa / Interagindo com usúario

puts "escolha uma posição para inserir um novo valor!"
print ">>"
posicao = gets.chomp.to_i

puts "Escolha o valor que deseja inserir nessa posição!"
print ">>"
valor = gets.to_s

puts insereNoArray(array, valor, posicao)
# puts array.insert(posicao,valor)
# puts array.insert()