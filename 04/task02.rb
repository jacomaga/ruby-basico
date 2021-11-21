hash = {}
count = 0
while count < 3 do 
    print "Enter a key value: "
    key =  gets.chomp
    print "Enter a value to the key: "
    value =  gets.chomp

    hash[key.intern] = value
    count += 1
end