# atividade 1
#Desenhe um quadrado de 10 linhas por 10 colunas. Desenhar as bordas com “*”, preencher com “x”.

# Funções
# def quadrado(linha, coluna)
#     for a in(1..linha)
#         for b in(1..coluna) 
#             if a == 1 or a == coluna or b == 1 or b == linha
#                 print " * "
#             else
#                 print " x "
#             end    
#         end
#         print "\n"
#     end
# end

# # Inicio do programa / interagindo com usuario.
# print " Digite uma quantidade para linhas ! :"
# linha = gets.chomp.to_i
# print " Digite uma quantidade para colunas! :"
# coluna = gets.chomp.to_i

# puts quadrado(linha, coluna)



# atividade 2
# Esse aqui é um desafio. Faça um código para obter esse resultado:

# *
# **
# ***
# ****
# *****
# ******
# *******
# ********
# *********
# **********


# Inicio do programa
# print "Digite um numero inteiro! :"
# numero = gets.chomp.to_i
# for i in (0..numero)
#     for a in (1..i + 1)
#         print " * "
#     end
#     print "\n"
# end




#atividade 3 

#Desenhar uma pirâmide. O tamanho da base deve ser informado. Se o tamanho da base for numero par, 
# o topo terá "**", se for ímpar "*". Então, cada nível é preenchido até que o nível da base tenha o 
# mesmo número de "*" que o número informado.

#     **
#    ****
#   ******
#  ********
# **********

#        *
#       ***
#      *****
#     *******
#    *********
#   ***********
#  *************
# ***************

# print " Informe com um numero qualquer, par ou impar para saber o formato da piramide: "
# numeroPiramide = gets.chomp.to_i
# def numeroPar(numeroPiramide)
#     if numeroPiramide % 2 == 0
#         for linha in (0..5)
#             coluna = 0
#             while coluna < linha
#                 coluna += 1
#                 print "**"
#             end
#             print "\n"
#         end
#     else
#         for linha in (0..8)
#             coluna = 0
#             while coluna < linha
#                 coluna += 1
#                 print "*"
#             end
#             print "\n"
#         end
#     end
# end

# puts numeroPar(numeroPiramide)

# Atividade 3 Melhorada

# print " Informe qual o valor da base da sua piramide: "
# numeroPiramide = gets.chomp.to_i
# caracter1 = "*"
# caracter2 = "**"
# car1 = caracter1
# car2 = caracter2

# if numeroPiramide % 2 == 0
#     for i in (1..numeroPiramide)
#         puts "  " * (numeroPiramide - i) + car2
#         car2 += caracter2 * 2
#     end
# else
#     for i in (1..numeroPiramide)
#         puts " " * (numeroPiramide - i) + car1
#         car1 += caracter1 * 2
#     end
# end



#  Atividade 4 


print " Informe qual o valor da base da sua piramide: "
numeroPiramide = gets.chomp.to_i
caracter1 = "*"
caracter2 = "**"
car1 = caracter1
car2 = caracter2


if numeroPiramide % 2 == 0
    for i in (1..numeroPiramide)
        puts "++" * (numeroPiramide - i) + car2 + "++" * (numeroPiramide - i)
        car2 += caracter2 * 2
    end
else
    for i in (1..numeroPiramide)
        puts "+" * (numeroPiramide - i) + car1 + "+" * (numeroPiramide - i)
        car1 += caracter1 * 2
    end
end

# print " Informe qual o valor da base da sua piramide: "
# numeroPiramide = gets.chomp.to_i.abs 
# caracter1 = "*"
# caracter2 = "++"
# car1 = caracter1
# car2 = caracter2
# inicio = 0

    