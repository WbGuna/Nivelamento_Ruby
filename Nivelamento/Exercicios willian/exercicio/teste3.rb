# Funções
def quadrado(linha, coluna)
    for a in(1..linha)
        for b in(1..coluna) 
            if a == 1 or a == coluna or b == 1 or b == linha
                print " * "
            elsif a == 9 or b == 9
                print " r "
            else
                print "   "
            end    
        end
        print "\n"
    end
end

# Inicio do programa / interagindo com usuario.
print " Digite uma quantidade para linhas ! :"
linha = gets.chomp.to_i
print " Digite uma quantidade para colunas! :"
coluna = gets.chomp.to_i

puts quadrado(linha, coluna)