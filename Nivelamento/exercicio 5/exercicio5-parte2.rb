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
