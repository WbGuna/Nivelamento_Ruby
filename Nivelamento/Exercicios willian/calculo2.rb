#Fazer Função que soma, outra que multiplica, outra que divide e outra que subtrai. Onde o usuario vai escolher qual função ele quer utilizar e, ele digite dois valores na entrada após escolher a função.



#Função Escolha
def escolha(escolha)
    if escolha == 1
        def soma(x,y)
            valor = x + y
            return valor
        end        
        print "Digite um numero:"
        num1 = gets.chomp.to_i
        puts ""
        print "Digite outro numero:"
        num2 = gets.chomp.to_i
        resultado = soma(num1,num2)
        return puts "O resultado eh " + resultado.to_s + " ." 
    elsif escolha == 2
        def subtracao(x,y)
            valor = x - y
            return valor
        end        
        print "Digite um numero:"
        num1 = gets.chomp.to_i
        puts ""
        print "Digite outro numero:"
        num2 = gets.chomp.to_i
        resultado = subtracao(num1,num2)
        return puts "O resultado eh " + resultado.to_s + " ."  
    elsif escolha == 3
        def divisao(x,y)
            valor = x / y
            return valor
        end        
        print "Digite um numero:"
        num1 = gets.chomp.to_i
        puts ""
        print "Digite outro numero:"
        num2 = gets.chomp.to_i
        resultado = divisao(num1,num2)
        return puts "O resultado eh " + resultado.to_s + " ."  
    elsif escolha == 4
        def multiplicacao(x,y)
            valor = x * y
            return valor
        end        
        print "Digite um numero:"
        num1 = gets.chomp.to_i
        puts ""
        print "Digite outro numero:"
        num2 = gets.chomp.to_i
        resultado = multiplicacao(num1,num2)
        return puts "O resultado eh " + resultado.to_s + " ."        
    else
        puts "Escolha um valor conforme informado." 
    end
end

# Inicio Programa / Interagindo com usuario.

puts "Escolha  um numero que corresponde ao calculo desejado"
puts "Após isso digite os valores para calcular."
puts "   1 - Somar"
puts "   2 - Subtracao"
puts "   3 - Divisao"
puts "   4 - Multiplicacao"
print ":"
numero = gets.chomp.to_i

escolha(numero)