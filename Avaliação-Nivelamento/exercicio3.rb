# Defina uma função “altura_escada” que deve receber um número inteiro para representar a altura da escada e deve retornar um array de strings para representar graficamente a escada.
# Valide o parâmetro da altura da escada, que deve ser um número maior ou igual a 1. Caso contrário, a função deve retornar um array vazio.
# Ex.:
# puts(altura_escada(1))
# # deve imprimir
# #
# puts(altura_escada(2))
# # deve imprimir
# _#
# ##
# puts(altura_escada(3))
# # deve imprimir
# __#
# _##
# ###
# puts(altura_escada(5))
# # deve imprimir
# ____#
# ___##
# __###
# _####
# #####
# puts(altura_escada(0))
# # deve imprimir nada, pois tem que retornar um array vazio


#Funções

# Função faz escada.
def alturaEscada(base)
    if base <= 0
        return array[]
    end
    altura =  base
    blocoBase = "#"
    for linha in(1..altura)
        bloco = blocoBase + ("#" * (linha-1))
        blocoVazio = "_" * (altura - linha)
        blocoLinha = blocoVazio + bloco
        print blocoLinha
        print "\n"
    end
end

# Inicio do programa / interagindo com usuário
puts " Informe a atura da escada: "
print ">>>"
numero = gets.chomp.to_i
alturaEscada(numero)

