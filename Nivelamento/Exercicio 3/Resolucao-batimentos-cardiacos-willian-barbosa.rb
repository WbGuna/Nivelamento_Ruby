# Crie uma função que calcule a quantidade de batimentos cardiacos de uma pessoa na vida.
# A função deve receber idade, quantidade de batimentos por minuto.
# Utilizar a função converteAnosParaDias na solução.

#transforma anos de vida em dias.
def converterAnosDias(ano)
    return ano * 365
end

#Calcula batimentos cardiacos.
def calcularBatimentosDaPessoa(converterAnosDias, batimentos)
    return converterAnosDias * 1440 * batimentos
end

#Variaveis ano de vida e batimentos por minuto
ano = 40
batimentos = 60

puts "O batimento Cardiaco de uma pessoa na vida eh: "
puts calcularBatimentosDaPessoa(converterAnosDias(ano), batimentos)

