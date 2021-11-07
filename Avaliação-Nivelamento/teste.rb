
# Arrays
array = [
    263, 240, 266, 259, 253, 257, 261, 
    239, 274, 264, 260, 262, 261, 273, 
    270, 278, 266, 277, 290, 294, 289, 
    294, 277, 293, 297, 247, 278, 297, 
    298, 262, 266, 304, 246, 279, 281
]

# Funções
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

def calculaMediaMovel(array, intervalo)
    array2 = []
    indice_medias = 0
    soma = 0.0
    contagem = 0
    for i in (0..array.size-1)
        soma += array[i]
        contagem += 1
        if contagem == intervalo
            media = soma / intervalo
            array2 << media 
            indice_medias += 1
            soma = 0.0
            contagem = 0
        end
    end
    if contagem == 0
        return array2
    else
        media = soma / contagem
        array2 << media
        return array2
    end    
end

puts calculaMediaMovel(array, 7)