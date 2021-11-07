def validacao(n)
    if n <= 0
        return false
    end
    return true    
end

def imprime_numeros_coluna(linha)
    for coluna in(1..linha)
        print linha * coluna
        print " "
    end
    print "\n"    
end

def imprime_numeros(n)
    for linha in(1..n)
        imprime_numeros_coluna(linha)
    end    
end

def imprimir_tabela(n)
    if validacao(n)
        imprime_numeros(n)
    else
        puts "ARGUMENTO INVÁLIDO"
    end        
end

imprimir_tabela(3)
puts
imprimir_tabela(5)
puts
imprimir_tabela(7)
puts
imprimir_tabela(0)