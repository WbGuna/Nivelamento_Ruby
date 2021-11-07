# O governo do Estado de SP registra o número de mortes por covid diariamente. No entanto, para publicar os resultados de modo mais amigável, é necessário calcular a média móvel semanal.
#     Para auxiliar o secretário de Saúde, faça uma função chamada "calcula_media_movel", que deve receber como parâmetros um array com a série de registros de mortes diária por covid e o número de dias de intervalo para calcular as médias. Essa função deve retornar um novo array sendo que o valor de cada elemento é a média de mortes com base no número de dias de intervalor informado no segundo parâmetro.   
#     OBS.: O último elemento do novo array deve ser a média dos últimos números da série de registros que sobrarem.   
#     Por exemplo:    
#     mortes_diaria = [
#         263, 240, 266, 259, 253, 257, 261, 
#         239, 274, 264, 260, 262, 261, 273, 
#         270, 278, 266, 277, 290, 294, 289, 
#         294, 277, 293, 297, 247, 278, 297, 
#         298, 262, 266, 304, 246, 279, 281
#     ]   
#     mortes_media_movel = calcula_media_movel(mortes_diaria, 7)
#     print(mortes_media_movel)
#     print("\n")
#     # deve imprimir
#     # [257.0, 261.85714285714283, 280.57142857142856, 283.2857142857143, 276.57142857142856]   
#     mortes_media_movel = calcula_media_movel(mortes_diaria, 5)
#     print(mortes_media_movel)
#     print("\n")
#     # deve imprimir
#     # [256.2, 259.0, 265.2, 281.0, 290.0, 276.4, 275.2]   
#     mortes_media_movel = calcula_media_movel(mortes_diaria, 10)
#     print(mortes_media_movel)
#     print("\n")
    # deve imprimir
    # [257.6, 273.1, 283.2, 275.2]



    
# Arrays
array = [
    263, 240, 266, 259, 253, 257, 261, 
    239, 274, 264, 260, 262, 261, 273, 
    270, 278, 266, 277, 290, 294, 289, 
    294, 277, 293, 297, 247, 278, 297, 
    298, 262, 266, 304, 246, 279, 281
]

# Funções
def calculaMediaMovel(array, intervalo)
    array2 = []
    soma = 0.0
    contagem = 0
    for i in (0..array.size-1)
        soma += array[i]
        contagem += 1
        if contagem == intervalo
            media = soma / intervalo
            array2 << media 
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

puts "Digite um valor para que seja calculada a media movel dos dados informados a seguir."
puts "263, 240, 266, 259, 253, 257, 261, 
239, 274, 264, 260, 262, 261, 273, 
270, 278, 266, 277, 290, 294, 289, 
294, 277, 293, 297, 247, 278, 297, 
298, 262, 266, 304, 246, 279, 281"
puts " Informe o valor do intervalo correspondente a media movel desejada."
print ">>>"
intervalo = gets.chomp.to_i
puts calculaMediaMovel(array, intervalo)