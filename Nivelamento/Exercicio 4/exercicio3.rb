#Escreva uma função (com parâmetros, variáveis locais e retorno, se necessários) para as seguintes necessidades abaixo:
#1. retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor informado para a função
#2. retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor informado para a função
#3. retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função
#4. retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função

#Funções

#Função que converte anos para horas.
def anoParaHora(ano)
    return ano * 365 * 24
end 

#Função que converte decadas para minutos.
def decadaParaMinutos(ano)
    decada = ano * 10
    return decada * 365 * 24 * 60
end

#Função que converte idade para segundos.
def idadeParaSegundos(idade)
    ano = idade * 365
    return ano * 24 * 60 * 60
end

#Função que converte segundos para Idade.
def segundosParaIdade(segundos)
    tempo = segundos / 60 / 60
    return tempo / 24 / 365
end

#Código / interação com usuário
puts "Digite um valor em anos que vou te informar a quantidade de horas que existe nesse periodo!"
puts ""
ano = gets.to_i
puts ""
puts "Voce digitou " + ano.to_s + " então a quantidade correspondente em horas eh: " + anoParaHora(ano).to_s + " horas."
puts ""
puts "-----------------------------------------------------------------------------------"

puts "Digite quantas decadas deseja que eu transforme em minutos"
puts ""
anoD = gets.to_i
puts ""
puts "Voce digitou " + anoD.to_s + " decada(s) então a quantidade de minutos correspondente eh: " + decadaParaMinutos(anoD).to_s + " minutos."
puts "------------------------------------------------------------------------------------"

puts "Digite sua idade que vou tranformala em segundos."
puts ""
idade = gets.to_i
puts ""
puts "Você disse que sua idade eh " + idade.to_s + " ano(s), então esta idade em segundos eh: " + idadeParaSegundos(idade).to_s + " segundos."
puts ""
puts "-------------------------------------------------------------------------------------"

puts "Digite um valor em segundos, que direi quantos anos corresponde."
puts ""
segundos = gets.to_i
puts ""
puts "Voce digitou " + segundos.to_s + " segundos, entao a idade correspondente eh: " + segundosParaIdade(segundos).to_s + " ano(s)."
puts "--------------------------------------------------------------------------------------"