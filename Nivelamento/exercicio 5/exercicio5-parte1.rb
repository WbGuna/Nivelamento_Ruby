#Parte 1:
#Considere os métodos (as funções) escritos nos exercícios anteriores:
#Os métodos que calculam:
#- o diâmetro de um círculo é 2x o seu raio
#- o comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
#- a área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
#Escreva um programa que use esses métodos, porém, de tal forma que o valor do raio do círculo seja perguntado ao usuário.

#Funções:
#Função que calcula o diametro de um circulo.
def calculaDiametro(raio)
    return raio * 2
end 

#Função que calcula comprimento de um circulo
def calculaComprimento(diametro)   
    return calculaDiametro(diametro) * Math::PI
end

#Função calcula a área de um circulo.
def calculaArea(raio)
    return Math::PI * raio**2
end

#Inicio código / buscando informação com usuario
puts ''
puts 'Digite o "valor do raio" de um circulo, que te informo seu diametro, seu comprimento e sua área. '
puts ""
raio = gets.to_f # Fiz apenas uma alteração aqui para ponto futuante
puts ""
comprimento = calculaComprimento(raio)
diametro = calculaDiametro(raio)
area = calculaArea(raio)
puts 'O valor que voce digitou para o raio do circulo eh ' + raio.to_s + ' ,portanto: '
puts ''
puts 'Seu diametro eh: ' + diametro.to_s
puts ''
puts 'Seu comprimento eh: ' + comprimento.to_s
puts ''
puts 'Sua area eh: ' + area.to_s
puts ''

# É o mesmo código do exercicio anterior, apenas tratei a entrada agora para poder receber com ponto flutuante, como o sr. fez no exercio, e removi as variaveis das funções deixando todo calculo direto no retorno das funções.