numbers = {A: 10, B: 30, C:20, D: 25, E:15}

higherNumberKey = 0
higherNumber = 0

numbers.each do |key, value|
    if value > higherNumber
        higherNumberKey = key
        higherNumber = value
    end
end

print "O maior item é o elemento de chave #{higherNumberKey} e valor #{higherNumber}"