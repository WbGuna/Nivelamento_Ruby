# #A partir da versão 2 do jogo de adivinhação, faça uma nova versão em que o jogador receba a informação, após chutar o número, se o chute foi maior ou menor que o número pensado. A seguir, ele ganha uma nova tentativa, de modo que o jogo somente vai terminar quando ele acertar.
# Ao final, após acertar, informe o número de tentativas que o jogador teve para acertar.
# Observação: valide o chute do jogador, ignorando a tentativa caso ele informe um numero invalido.


#Funções
def ehNumero(n)
    return Float(n) != nil rescue false
end
contagem = 0
erro = 0

#Inicio programa / Interagindo com usuario.
for i in (0..4)
    contagem = i + 1
    erro = erro + 1
    puts "*************************************************"
    puts "Jogo de Adivinhação"
    puts "O computador selecionaou um número entre 0 e 10"
    puts "Forneça um número para adivinhação"
    puts "*************************************************"
    numeroComputador = rand(1..10)
    print "Digite um numero entre 0 e 10, escolha seu palpite :"
    palpite = gets.chomp
    print (numeroComputador.to_s) + " Seu Palpite: é " + palpite.to_s
    puts " \nEsta é a contagem do loop nº " + contagem.to_s
    puts "\n Você jogou : " + erro.to_s
    if !ehNumero(palpite) 
        erro = i + 1      
        puts "\n Chute é inválido! Não foi digitado um valor numérico."
        redo
    elsif palpite.to_i < 0 or palpite.to_i > 10
        erro = i + 1  
        puts "\n Palpite é inválido! Digite um número entre 0 e 10"
        redo
    else        
        if numeroComputador.to_i == palpite.to_i
            erro = i - 1
            puts "\n Acertou!"
            break
        elsif numeroComputador.to_i > palpite.to_i
            erro = i + 1
            print "\n O seu chute foi menor que a escolha do computador.\n"
        else palpite.to_i > numeroComputador.to_i
            erro = i + 1
            print "\n O seu chute foi maior que a escolha do computador.\n"
        end    
    end

end