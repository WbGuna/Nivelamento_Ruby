# Defina uma função chamada “imprimir_tabela”, que deve receber um número inteiro como parâmetro e deve imprimir na tela uma tabela de números seguindo a seguinte regra:
# 1
# 2 4
# 3 6 9
# ...
# n*1 n*2 n*3 ... n*n
# Valide se o parâmetro é um número maior que zero, se não for, a função deve imprimir na tela "ARGUMENTO INVÁLIDO"
# imprimir_tabela(5) # deve ser impresso na tela a seguinte tabela:
#  1
#  2 4
#  3 6 9
#  4 8 12 16
#  5 10 15 20 25

# Funções

def imprimirTabela(numero)
    for i in (1..numero)
        if numero < 0 or numero > 5
            puts "Digite um valor valido."
            break
        end
        print i * 1
        for a in (1..i)
            if a == 2
                print " #{i * 2}"
            elsif a == 3
                print " #{i * 3}"
            elsif a == 4
                print " #{i * 4}"
            elsif a == 5
                print " #{i * 5}"
            end
        end
        print "\n"
    end
end

def  validacao(n)
    if n <= 0
        return false
    end
    return true
end



def imprimirTabela(numero)

end

# Inicio do programa / Interagindo com usuario
print "Digite um numero inteiro de 1 até 5! :"
numero = gets.chomp.to_i
puts imprimirTabela(numero)
puts "\n"
