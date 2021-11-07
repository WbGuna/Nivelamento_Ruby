# Ordena array de forma correta

# array = [100, 20, -1, -500, 10, 0,-700]
array = [10, 0, -1, -500, 20, 100]
def ordenarArray(array)
    for i in (0..array.size-1)
        for n in (0..array.size-2)
          if array[i] < array[n]
            temp = array[n]
            array[n] = array[i]
            array[i] = temp
          end
        end
    end
  return array
end

puts ordenarArray(array)