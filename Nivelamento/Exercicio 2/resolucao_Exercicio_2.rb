#Declaração de Variaveis
ano = 365
hora = 24
minutos = 60
segundos = 60
idadeSegundos = 1232000000
decada = 10
minhaIdade = 40
idadeDesejada = 144

#Resolução dos Exercicios
puts "1) Quantas Horas há em um ano?"
puts ano*hora
puts "----------------------------------"
puts "2) Quantos Minutos há em uma década?"
puts (hora*minutos)*ano*decada
puts "----------------------------------"
puts "3) Qual é a sua idade em segundos?"
puts (minhaIdade*ano)*hora*minutos*segundos
puts "----------------------------------"
puts "4) Quantos chocolates você pretende comer na vida?"
puts "Eu como 2 chocolates por mês, e pretendo viver até 144 anos, sendo assim."
puts hora*idadeDesejada
puts "5) Se minha idade é de 1232 milhões de segundos, qual é minha idade em anos?"
puts (idadeSegundos/segundos)/minutos/hora/ano
puts "----------------------------------"