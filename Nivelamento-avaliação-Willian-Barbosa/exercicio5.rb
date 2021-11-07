# O número PI ou 3.14159... pode ser obtido através de várias fórmulas. Uma forma simples de obtê-lo é pela fórmula de Leibniz, que diz que a convergência da seguinte série infinita é igual a PI:
# PI = 4/1 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 ...
# Escreva uma função chamada "calcula_pi" que recebe o número de termos a serem usados na fórmula de Leibniz para obter o valor de PI. O resultado do cálculo deve ser retornado pela função.
# Valide o número de termos. Deve ser um número inteiro maior ou igual 1. Se a validação falhar, a função retorna nil.
# OBS.: Não se esqueçam que o retorno da função deve ser um número ponto flutuante!
# Ex: 
# puts(calcula_pi(4))
# deve retornar o valor de (4/1 - 4/3 + 4/5 - 4/7), ou seja, 2.8952380952380956
# note que a expressão tem 4 termos, pois 4 foi o número de termos informado no parâmetro.


#Funções

#Função Calcula o PI com base em um valor informado pelo usuario 
def calculaPi(termo)
  if termo < 1
    return nil
  end
  contador = termo * 2
  condicao = true
  pi = 0
  inicio = 1
  while inicio < contador
    if condicao
      pi = pi + 4.0/inicio
      condicao = false
    else
      pi = pi - 4.0/inicio
      condicao = true
    end
  inicio = inicio + 2
  end
  return pi
end


#Inicio do programa / Interagindo com usuário
puts "Digite um valor para usarmos como termo, então vamor calcular o PI."
puts "Qual termo quer aplicar. :"
print ">>>"
termo = gets.chomp.to_f
calculaPi(termo)
print "Esse é o nosso resultado. :" + calculaPi(termo).to_s
puts "\nMath::PI = " + Math::PI.to_s