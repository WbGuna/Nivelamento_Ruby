#Funções
def fasePandemica(taxaDeVacinacao, fatorTransmissao, ocupacaoDeLeitos)
    if taxaDeVacinacao < 0 or taxaDeVacinacao > 1
        return "Paramêtro taxa de Vacinados inválido! Deve ser entre 0 e 1"
    end

    if fatorTransmissao < 0
        return "Parametro fator de Transmissão inválido! Deve ser maior ou igual a 0"
    end

    if ocupacaoDeLeitos < 0 or ocupacaoDeLeitos > 1
        return "Parametro taxa de Ocupação de Leitos Inválido! Deve ser entre 0 e 1"
    end 
    
    if taxaDeVacinacao > 0.8
        puts "Estamos na fase Azul"
    elsif ocupacaoDeLeitos <= 0.5 and fatorTransmissao < 1.0
        puts "Estamos na fase VERDE"
    elsif ocupacaoDeLeitos > 0.5 and ocupacaoDeLeitos <= 0.65 and fatorTransmissao < 1.0
        puts "Estamos na fase AMARELA"
    elsif ocupacaoDeLeitos > 0.65 and ocupacaoDeLeitos <= 0.8 and fatorTransmissao < 1.0
        puts "Estamos na fase LARANJA"
    elsif ocupacaoDeLeitos > 0.8 and ocupacaoDeLeitos <= 0.9 or fatorTransmissao >= 1.0
        puts "Estamos na fase VERMELHA"
    elsif ocupacaoDeLeitos > 0.9
        puts "Estamos na fase ROXA"
    else
        puts "Existe algum dado incorreto, leia as instruções antes de inserilos e tente novamente."
    end
end


# Inicio do Programa / Interagindo com usuario
puts ""
puts "Este é um software que disponibiliza a informação de que fase estamos nessa pandemia"
puts ""
puts "Para isso vamos necessitar de algumas informações"
puts "\nTaxa de vacinação, este dado deve ser digitado  0.0 até 1.0, sendo que 1.0 = 100% e 0.0 = 0%"
print " :"
vacinacao = gets.chomp.to_f
puts "Agora precisamos da informação do fator de transmissão, este dado deve ser digitado  0.0 até 1.0, sendo que 1.0 = 100% e 0.0 = 0%."
print " :"
transmissão = gets.chomp.to_f
puts "Agora necessitamos da ultima informação a taxa de ocupação de leitos, este dado deve ser digitado  0.0 até 1.0, sendo que 1.0 = 100% e 0.0 = 0%. "
print " :"
leitos = gets.chomp.to_f
puts ""

fasePandemica(vacinacao, transmissão, leitos)