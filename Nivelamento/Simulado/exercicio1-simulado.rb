# Cada maça custa R$ 0,30, porém, se levar mais de uma dúzia, o preço de cada baixa para R$ 0,25. 
# Considerando essa precificação, escreva uma função chamada "preco_maca" que deve receber como parâmetro a quantidade de maçãs e deve retornar o valor em reais a ser pago por elas.
# Valide se a quantidade é um número maior que zero, se não for, a função deve retornar nil.
# puts(preco_maca(6)) # deve imprimir 1.8
# puts(preco_maca(12)) # deve imprimir 3.0

# Funções
def precoMaca(quantidaDeMaca)
    if quantidaDeMaca <= 0
        return nil
    elsif quantidaDeMaca > 0 and quantidaDeMaca <= 11
        total1 = quantidaDeMaca * 0.30
        return total1.round(2)
    else
        total2 = quantidaDeMaca * 0.25
        return total2.round(2)
    end
end

# Inicio do Programa / Interagindo com usuario
puts "Somos a maior banca de maça da região."
puts "Cada laranja custa R$0.30...... Porem se comprar mais de 12 sai a R$0.25"
print "Me diga quantas maças vai querer.:"
maca = gets.chomp.to_i

puts "\nEntão você pediu " + maca.to_s + " maça(s), o valor a ser pago é.: R$" + precoMaca(maca).to_s
# puts (precoMaca(maca))