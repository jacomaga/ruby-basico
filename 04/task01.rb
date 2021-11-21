
array = []
while array.count  < 3 do 
    print "Enter a value: "
    number = gets.chomp.to_i
    array.push(number)
end

array.each do |number|
  puts number ** 2
end




