#Sabendo que:
#1) O diâmetro de um círculo é 2x o seu raio.
#2) O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
#3) A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
#Escreva funcões para calcular o diâmetro, o comprimento e a área de um círculo com base no valor do seu raio.
#Ou seja, escreva uma função para cada cálculo, considerando que o raio será informado na chamada de cada função.
#Importante: evite duplicação de código!
#Dica: no Ruby, a constante PI é fornecedida por 'Math::PI' (rode um 'puts Math::PI' no 'irb' para ver o que aparece)
#Escreva códigos para testar cada uma das funções.

#Função que calcula o diametro de um circulo.
def calculaDiametro(raio)
    diametro = raio * 2
    return diametro
end 

#Função que calcula comprimento de um circulo
def calculaComprimento(diametro)
    comprimento = calculaDiametro(diametro) 
    return comprimento * Math::PI
end

#Função calcula a área de um circulo.
def calculaArea(raio)
    area = raio**2
    return area * Math::PI
end

#Inicio código / buscando informação com usuario
puts ''
puts 'Digite o "valor do raio" de um circulo, que te informo seu diametro, seu comprimento e sua área. '
puts ""
raio = gets.to_i
puts ""
comprimento = calculaComprimento(raio)
diametro = calculaDiametro(raio)
area = calculaArea(raio)
puts 'O valor que voce digitou para o raio do circulo eh ' + raio.to_s + ' portanto: '
puts ''
puts 'Seu diametro eh: ' + diametro.to_s
puts ''
puts 'Seu comprimento eh: ' + comprimento.to_s
puts ''
puts 'Sua area eh: ' + area.to_s
puts ''

