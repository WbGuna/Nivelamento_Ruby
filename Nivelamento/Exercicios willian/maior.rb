#Faça a função chamada "Maior", que receba vários parametros com valores inteiros. Seu programa tem que analisar, todos os valores e dizer qual deles é o maior.

#Funções

def qualOMaior(num1, num2, num3)
    if num1 > num2 and num1 > num3
        puts "O numero " + num1.to_s + " eh o numero maior digitado"
    elsif num2 > num3 and num2 > num1
        puts "O numero " + num2.to_s + " eh o numero maior digitado"
    elsif num3 > num1 and num3 > num2
        puts "O numero " + num3.to_s + " eh o numero maior digitado"
    elsif num1 == num2 or num2 == num3 or num1 == num3
        puts "Digite valores diferentes por favor."
    else
        puts "Por favor leve a serio. "
    end  
end

#Inicio do programa / interagindo com usuario
puts " Digite tres numeros e vou te dizer qual é o maior."
puts ""
puts "Digite um numero:"
num1 = gets.chomp.to_i

puts ""
puts "Digite outro numero:"
num2 = gets.chomp.to_i

puts ""
puts "Digite o ultimo numero:"
num3 = gets.chomp.to_i

qualOMaior(num1, num2, num3)
