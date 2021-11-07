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

# É o mesmo código do exercicio anterior, apenas tratei a entrada agora para poder receber com ponto flutuante, como o sr. fez no exercio, e removi algumas variaveis das funções deixando todo calculo direto no retorno das funções.


#Parte 2:
#Escreva um programa que pergunte o nome e a idade do usuário. Escreva também uma função que calcula a quantidade de batimentos cardíacos (uma estimativa) baseado na quantidade de dias que o usuário viveu. Considere uma média de 80 batimentos por minuto. Essa função deve receber a idade do usuário como parâmetro. 
#Para cada parte, escreva códigos que testem os programas escritos.

#Funções:
#Função Converte anos para dias
def converteAnosParaDias(ano)
    return ano * 365
end

#Função Batimento Cardiaco
def calcularBatimentosCardiacos(idade, batimentos)
    dias = converteAnosParaDias(idade)
    return dias * 24 * 60 * batimentos
end

# Inicio do programa / Interagindo com usuario.

#Variaveis
puts ''
puts 'Digite sua idade e vamos retornar a quantidade de batimentos cardiacos que voce teve ate aqui.'
puts ''
idade = gets.to_i
mediaBatimentos = 80.0
totalBatimentos = calcularBatimentosCardiacos(idade, mediaBatimentos)
puts ''
puts 'O total de batimentos com base na sua idade que eh' + idade.to_s + ' eh em media: ' + totalBatimentos.to_s + '.'
