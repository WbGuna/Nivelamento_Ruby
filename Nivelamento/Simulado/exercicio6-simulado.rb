# Considerando o código abaixo, implemente as partes que estão faltando para que a função que verifica se um texto é um palíndromo funcione corretamente.
# def palindromo(texto)
#     pontuacoes = ",.!?;:"
#     espaco = " "
#     texto.delete!(pontuacoes)
#     texto.delete!(espaco)
#     texto.upcase!()
#     com_acento = "ÁÉÍÓÚÂÊÎÔÛÃÕ"
#     sem_acento = "AEIOUAEIOUAO"
#     for i in (0..com_acento.size-1)
#         texto.gsub!(com_acento[i], sem_acento[i])
#     end
#     # implemente a partir daqui!
# end
# puts(palindromo("LÁ É RETRÔ, MADAME, TEMA DA MORTE REAL!")  # deve retornar true
# puts(palindromo("A história se repete, a primeira vez como tragédia e a segunda como farsa.")  # deve retornar false
# puts(palindromo("ABC DEFG. GFEDC BA!")  # deve retornar true

# FUNÇÕES

# Função Menu.
def menuArray(valor)  
    if valor < 0 or valor > 3
        puts " ESCOLHA UM VALOR DO MENU VALIDO"      
    elsif valor == 1
        return "LÁ É RETRÔ, MADAME, TEMA DA MORTE REAL!"
    elsif valor == 2
        return "A história se repete, a primeira vez como tragédia e a segunda como farsa."
    elsif valor == 3
        return "ABC DEFG. GFEDC BA!"
    end
end

def palindromo(texto)
    pontuacoes = ",.!?;:"
    espaco = " "
    texto.delete!(pontuacoes)
    texto.delete!(espaco)
    texto.upcase!()
    com_acento = "ÁÉÍÓÚÂÊÎÔÛÃÕ"
    sem_acento = "AEIOUAEIOUAO"
    for i in (0..com_acento.size-1)
        texto.gsub!(com_acento[i], sem_acento[i])
    end
    inicio = 0
    fim = texto.size - 1
    eh_palindromo = true
    while eh_palindromo
        print inicio
        print " "
        print texto [inicio]
        print " = "
        print texto[fim]
        print " "
        print fim
        print "\n"
        if texto[inicio] == texto[fim]
            inicio = inicio + 1
            fim = fim - 1
            if fim == 0
                break
            end
        else 
            eh_palindromo = false
            break
        end
    end
    return eh_palindromo
end

# Função reconhece um palindromo
def palindromo(texto)
    pontuacoes = ",.!?;:"
    espaco = " "
    texto.delete!(pontuacoes)
    texto.delete!(espaco)
    texto.upcase!()
    com_acento = "ÁÉÍÓÚÂÊÎÔÛÃÕ"
    sem_acento = "AEIOUAEIOUAO"
    for i in (0..com_acento.size-1)
        texto.gsub!(com_acento[i], sem_acento[i])
    end
    if texto.reverse == texto
        puts "#{ texto } sim é um polindrome."
        return true
    else
        puts "#{ texto } não é um polindrome."
        return false
    end
end

texto1 = "LÁ É RETRÔ, MADAME, TEMA DA MORTE REAL!"
texto2 = "A história se repete, a primeira vez como tragédia e a segunda como farsa."
texto3 = "ABC DEFG. GFEDC BA!"

puts "TEXTO UM"
puts texto1
puts ""
puts "TEXTO DOIS"
puts texto2
puts ""
puts " TEXTO TRÊS"
puts texto3

puts "\nEscolha valor (1) para texto UM - (2) para texto DOIS - (3) para texto TRÊS."
print ">>"
valor = gets.chomp.to_i
texto = menuArray(valor)
puts palindromo(texto)
