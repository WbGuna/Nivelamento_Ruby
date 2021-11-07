# Descreva o que o algoritmo abaixo está fazendo e qual o ajuste necessário para que a ordenação seja feita corretamente.

array = [10, 0, -1, -500, 20, 100]

def ordenarArray(array)
    ordenado = false
    until ordenado 
       for i in(0..array.size-2)
            atual = i
            proximo = i + 1
            if array[atual] > array[proximo]
                temp = array[proximo]
                array[proximo] = array[atual]
                array[atual] = temp
                ordenado = false                               
            end                
       end
       return array       
    end
end

puts " Valor de array com o laço que o Léo deu como exemplo."
puts ordenarArray(array)

# Explicação:
#  Léo eu entendi assim:
# O until ele vai ficar rodando até que a variavel ordenado fique true.

# No laço for você disse para ele que ele deve ir da posição 0 até a penultima posição do array, entendi que fez isso pelo motivo que a ultima posição do array não ter ninguém a sua frente para ela ser comparada, exploco a forma de comparação logo abaixo.

#Você declarou duas variaveis "atual", esta vai receber o valor do indice do for, em outras palavras a posição que o for estiver no array, e a variavel "proximo" esta vai receber o indice do for com uma posição a frente sempre, aqui já ajuda entender mais um pouco do porque do array.size-2.

# Seguindo você fez um if dizendo para ele que sempre que o array estiver na posição do indice do for "A variavel "atual" significa isso" e este valor contido nela for maior que o proximo valor eles devem trocar de lugar, então você fez uma troca de posições utilizando uma variavel temporaria. Isso deve percorrer todo o array e os valore devem ser trocados até que a variavel "ordenado" fique false então o until é finalizado.

# Até ai tudo bem, fiz de tudo para entender porque o zero ficava na posição zero do array e não consegui resolver ele sem alterar nada no código, peço até perdão por isso, mais não entendi o porque, talvez porque ainda não tenha amadurecido a forma correta como o until funciona então tentei fazer com dois for, e funcionou perfeitamente. Codigo com for abaixo.
puts "-----------------------------------------------------------------------"
def ordenarArray2(array)
    for i in (0..array.size-1)
        for n in (0..array.size-2)
          if array[i] < array[n]
            temp = array[n]
            array[n] = array[i]
            array[i] = temp
          end
        end
    end
  return array
end
puts " Resultado depois que fiz com o for no lugar do until"
puts ordenarArray2(array)

